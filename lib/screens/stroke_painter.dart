import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:xml/xml.dart';

class StrokeDrawing extends StatefulWidget {
  const StrokeDrawing({super.key, required this.assetPath, required this.onCompleted});

  final String assetPath;
  final VoidCallback onCompleted;

  @override
  State<StrokeDrawing> createState() => _StrokeDrawingState();
}

class _StrokeDrawingState extends State<StrokeDrawing> with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late Future<List<_StrokeSegment>> paths;
  bool completionReported = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
    paths = _loadPaths(widget.assetPath);
    animationController.addStatusListener(_handleAnimationStatus);
    paths.then((loadedPaths) {
      if (!mounted) return;
      animationController
        ..duration = Duration(milliseconds: math.max(800, loadedPaths.length * 700))
        ..forward();
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(covariant StrokeDrawing oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.assetPath == widget.assetPath) return;
    animationController.reset();
    completionReported = false;
    paths = _loadPaths(widget.assetPath);
    paths.then((loadedPaths) {
      if (!mounted) return;
      animationController
        ..duration = Duration(milliseconds: math.max(800, loadedPaths.length * 700))
        ..forward();
      setState(() {});
    });
  }

  void _handleAnimationStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed && !completionReported) {
      completionReported = true;
      widget.onCompleted();
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<_StrokeSegment>>(
      future: paths,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return AnimatedBuilder(
          animation: animationController,
          builder: (context, _) => CustomPaint(
            painter: _StrokePainter(
              paths: snapshot.data!,
              progress: animationController.value,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            child: const SizedBox.expand(),
          ),
        );
      },
    );
  }
}

Future<List<_StrokeSegment>> _loadPaths(String assetPath) async {
  final svg = await rootBundle.loadString(assetPath);
  final document = XmlDocument.parse(svg);
  final pathsById = <String, Path>{};
  for (final element in document.findAllElements('path')) {
    final id = element.getAttribute('id');
    final data = element.getAttribute('d');
    if (id != null && data != null) pathsById[id] = parseSvgPathData(data);
  }

  final clipsById = <String, Path>{};
  for (final clip in document.findAllElements('clipPath')) {
    final clipId = clip.getAttribute('id');
    final use = clip.findElements('use').firstOrNull;
    final reference = use?.getAttribute('href') ?? use?.getAttribute('xlink:href');
    if (clipId != null && reference != null) {
      final pathId = reference.replaceFirst('#', '');
      final path = pathsById[pathId];
      if (path != null) clipsById[clipId] = path;
    }
  }

  return document.findAllElements('path').where((element) {
    return element.getAttribute('clip-path') != null && element.getAttribute('d') != null;
  }).map((element) {
    final clipReference = element.getAttribute('clip-path')!;
    final clipId = RegExp(r'url\(#([^)]*)\)').firstMatch(clipReference)?.group(1);
    return _StrokeSegment(
      path: parseSvgPathData(element.getAttribute('d')!),
      clipPath: clipsById[clipId],
    );
  }).where((segment) => segment.clipPath != null).toList();
}

class _StrokeSegment {
  const _StrokeSegment({required this.path, required this.clipPath});

  final Path path;
  final Path? clipPath;
}

class _StrokePainter extends CustomPainter {
  const _StrokePainter({required this.paths, required this.progress, required this.color});

  final List<_StrokeSegment> paths;
  final double progress;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    if (size.isEmpty) return;
    final scale = math.min(size.width, size.height) / 1024;
    canvas.save();
    canvas.translate((size.width - 1024 * scale) / 2, (size.height - 1024 * scale) / 2);
    canvas.scale(scale);

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 128
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    final strokeProgress = progress * paths.length;

    for (var index = 0; index < paths.length; index++) {
      final pathProgress = (strokeProgress - index).clamp(0.0, 1.0).toDouble();
      if (pathProgress == 0) continue;
      canvas.save();
      canvas.clipPath(paths[index].clipPath!);
      for (final metric in paths[index].path.computeMetrics()) {
        canvas.drawPath(metric.extractPath(0, metric.length * pathProgress), paint);
      }
      canvas.restore();
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(_StrokePainter oldDelegate) => oldDelegate.progress != progress || oldDelegate.color != color;
}
