import 'dart:async';
import 'package:flutter/material.dart';
import 'package:oboemasu/screens/study_selection.dart';
import 'package:oboemasu/screens/stroke_painter.dart';

class StudyRoundPage extends StatefulWidget {
  const StudyRoundPage({
    super.key,
    required this.items,
    required this.title,
    required this.itemLabel,
    required this.startLabel,
    required this.countdownSeconds,
    required this.revealLabel,
    required this.progressLabel,
    required this.finishedLabel,
    required this.meaningLabel,
  });

  final List<StudyItem> items;
  final String title;
  final String Function(String optionKey) itemLabel;
  final String startLabel;
  final int countdownSeconds;
  final String revealLabel;
  final String Function(int current, int total) progressLabel;
  final String finishedLabel;
  final String meaningLabel;

  @override
  State<StudyRoundPage> createState() => _StudyRoundPageState();
}

class _StudyRoundPageState extends State<StudyRoundPage> {
  static const holdAfterRound = Duration(milliseconds: 1200);
  late final List<StudyItem> rounds;
  Timer? timer;
  int roundIndex = 0;
  late int countdown;
  int visibleGlyphIndex = -1;
  bool isRevealed = false;
  bool isFinished = false;
  StudyItem get current => rounds[roundIndex];

  @override
  void initState() {
    super.initState();
    rounds = [...widget.items]..shuffle();
    countdown = widget.countdownSeconds;
    _startCountdown();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void _startCountdown() {
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (countdown <= 1) {
        _revealCurrent();
      } else {
        setState(() => countdown--);
      }
    });
  }

  void _revealCurrent() {
    timer?.cancel();
    setState(() {
      countdown = 0;
      isRevealed = true;
      visibleGlyphIndex = 0;
    });
  }

  void _handleStrokeComplete(int index) {
    if (!mounted || !isRevealed || index != visibleGlyphIndex) return;
    if (visibleGlyphIndex < current.strokeUrls.length - 1) {
      setState(() => visibleGlyphIndex++);
    } else {
      timer = Timer(holdAfterRound, _nextRound);
    }
  }

  void _nextRound() {
    timer?.cancel();
    if (!mounted) return;
    if (roundIndex >= rounds.length - 1) {
      setState(() => isFinished = true);
      return;
    }
    setState(() {
      roundIndex++;
      countdown = widget.countdownSeconds;
      visibleGlyphIndex = -1;
      isRevealed = false;
    });
    _startCountdown();
  }

  @override
  Widget build(BuildContext context) {
    if (isFinished) {
      return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.finishedLabel, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
                label: Text(widget.startLabel),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text(widget.progressLabel(roundIndex + 1, rounds.length), textAlign: TextAlign.center),
          const SizedBox(height: 24),
          const SizedBox(height: 48),
          const SizedBox(height: 8),
          Text(
            current.subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(
            widget.itemLabel(current.optionKey),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
          if (current.meaning.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              '${widget.meaningLabel}: ${current.meaning}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          ],
          const SizedBox(height: 32),
          if (!isRevealed)
            SizedBox(
              height: 360,
              child: InkWell(
                onTap: _revealCurrent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(widget.revealLabel),
                      Text(
                        '$countdown',
                        style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              fontSize: 128,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          else
            SizedBox(
              height: 360,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (var index = 0; index < current.strokeUrls.length; index++)
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: index <= visibleGlyphIndex
                            ? StrokeDrawing(
                                key: ValueKey('${current.glyph}-$index'),
                                assetPath: current.strokeUrls[index],
                                onCompleted: () => _handleStrokeComplete(index),
                              )
                            : const SizedBox.expand(),
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
