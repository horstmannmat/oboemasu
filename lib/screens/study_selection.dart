import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oboemasu/data/kana.dart';
import 'package:oboemasu/data/kanji.dart';
import 'package:oboemasu/screens/study_round.dart';

class StudyItem {
  const StudyItem({required this.optionKey, required this.glyph, required this.subtitle, required this.meaning, required this.strokeUrls});

  final String optionKey;
  final String glyph;
  final String subtitle;
  final String meaning;
  final List<String> strokeUrls;
}

class RemoteData {
  static Future<List<StudyItem>> loadKana() async {
    final items = <StudyItem>[];
    for (final type in KanaType.values) {
      final data = jsonDecode(await rootBundle.loadString('assets/kana/data/${type.jsonValue}.json')) as List<dynamic>;
      items.addAll(data.map((value) {
        final kana = Kana.fromJson(value as Map<String, dynamic>);
        return StudyItem(
          optionKey: kana.type.jsonValue,
          glyph: kana.kana,
          subtitle: kana.romaji,
          meaning: '',
          strokeUrls: kanaStrokeUrls(kana),
        );
      }));
    }
    return items;
  }

  static Future<List<StudyItem>> loadKanji() async {
    final items = <StudyItem>[];
    for (final level in KanjiLevel.values) {
      final data = jsonDecode(await rootBundle.loadString('assets/kanji/data/${level.jsonValue.toLowerCase()}.json')) as List<dynamic>;
      items.addAll(data.map((value) {
        final kanji = Kanji.fromJson(value as Map<String, dynamic>);
        return StudyItem(
          optionKey: kanji.level.jsonValue,
          glyph: kanji.kanji,
          subtitle: [
            if (kanji.kunyomi.isNotEmpty) 'Kunyomi: ${kanji.kunyomi.join(', ')}',
            if (kanji.onyomi.isNotEmpty) 'Onyomi: ${kanji.onyomi.join(', ')}',
          ].join('\n'),
          meaning: kanji.meaning.join(', '),
          strokeUrls: kanjiStrokeUrls(kanji),
        );
      }));
    }
    return items;
  }

}

String kanaTypeLabel(KanaType type) => type.jsonValue[0].toUpperCase() + type.jsonValue.substring(1);
String kanjiLevelLabel(KanjiLevel level) => level.jsonValue;
List<String> kanaStrokeUrls(Kana kana) => splitKanaGlyph(kana.kana)
  .map((part) => 'assets/kana/kanastrokes-dist/${kana.type.jsonValue}/$part.svg')
    .toList();

List<String> kanjiStrokeUrls(Kanji kanji) => kanji.kanji.runes
  .map((codePoint) => 'assets/kanji/kanjistrokes-dist/$codePoint.svg')
    .toList();

List<String> splitKanaGlyph(String glyph) {
  if (glyph.runes.length != 2) return [glyph];
  final parts = glyph.runes.toList();
  const smallKana = {0x3083, 0x3085, 0x3087, 0x30E3, 0x30E5, 0x30E7};
  if (smallKana.contains(parts[1])) {
    return [String.fromCharCode(parts[0]), String.fromCharCode(parts[1])];
  }
  return [glyph];
}

class StudySelectionPage<T> extends StatefulWidget {
  const StudySelectionPage({
    super.key,
    required this.title,
    required this.itemLabel,
    required this.selectionTitle,
    required this.practiceTitle,
    required this.practiceCopy,
    required this.practiceCopy2,
    required this.options,
    required this.optionKey,
    required this.label,
    required this.loadEntries,
    required this.countLabel,
    required this.loadError,
    required this.startLabel,
    required this.countdownSeconds,
    required this.revealLabel,
    required this.progressLabel,
    required this.finishedLabel,
    required this.meaningLabel,
  });

  final String title;
  final String Function(String optionKey) itemLabel;
  final String selectionTitle;
  final String practiceTitle;
  final String practiceCopy;
  final String practiceCopy2;
  final List<T> options;
  final String Function(T option) optionKey;
  final String Function(T option) label;
  final Future<List<StudyItem>> Function() loadEntries;
  final String Function(int count) countLabel;
  final String Function(String title) loadError;
  final String startLabel;
  final int countdownSeconds;
  final String revealLabel;
  final String Function(int current, int total) progressLabel;
  final String finishedLabel;
  final String meaningLabel;

  @override
  State<StudySelectionPage<T>> createState() => _StudySelectionPageState<T>();
}

class _StudySelectionPageState<T> extends State<StudySelectionPage<T>> {
  late final Future<List<StudyItem>> entries;
  final selected = <String>{};

  @override
  void initState() {
    super.initState();
    entries = widget.loadEntries();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<StudyItem>>(
      future: entries,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text(widget.loadError(widget.title)));
        }

        final items = snapshot.data ?? const <StudyItem>[];
        final selectedItems = items.where((item) => selected.contains(item.optionKey)).toList();
        return ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Text(widget.practiceTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 16),
            Text(widget.practiceCopy),
            const SizedBox(height: 8),
            Text(widget.practiceCopy2),
            const SizedBox(height: 24),
            Text(widget.selectionTitle, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            ...widget.options.map((option) {
              final itemKey = widget.optionKey(option);
              final count = items.where((item) => item.optionKey == itemKey).length;
              return CheckboxListTile(
                value: selected.contains(itemKey),
                title: Text(widget.label(option)),
                subtitle: Text(widget.countLabel(count)),
                onChanged: (value) => setState(() => value == true ? selected.add(itemKey) : selected.remove(itemKey)),
              );
            }),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: selectedItems.isEmpty
                  ? null
                  : () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => StudyRoundPage(
                          items: selectedItems,
                          title: widget.title,
                          itemLabel: widget.itemLabel,
                          startLabel: widget.startLabel,
                          countdownSeconds: widget.countdownSeconds,
                          revealLabel: widget.revealLabel,
                          progressLabel: widget.progressLabel,
                          finishedLabel: widget.finishedLabel,
                          meaningLabel: widget.meaningLabel,
                        ),
                      )),
              icon: const Icon(Icons.play_arrow),
              label: Text(widget.startLabel),
            ),
          ],
        );
      },
    );
  }
}
