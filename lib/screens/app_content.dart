import 'package:flutter/material.dart';
import 'package:oboemasu/data/kana.dart';
import 'package:oboemasu/data/kanji.dart';
import 'package:oboemasu/l10n/app_localizations.dart';
import 'package:oboemasu/screens/about.dart';
import 'package:oboemasu/screens/study_selection.dart';

enum AppPage { kana, kanji, about }

class AppContent extends StatelessWidget {
  const AppContent({super.key, required this.page});

  final AppPage page;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (page) {
      case AppPage.kana:
        return StudySelectionPage<KanaType>(
          title: l10n.kana,
          selectionTitle: l10n.kanaSelectionTitle,
          practiceTitle: l10n.practiceTitle,
          practiceCopy: l10n.kanaPracticeCopy,
          practiceCopy2: l10n.kanaPracticeCopy2,
          options: [KanaType.hiragana, KanaType.katakana],
          optionKey: (type) => type.jsonValue,
          label: (type) => type == KanaType.hiragana ? l10n.hiragana : l10n.katakana,
          itemLabel: (key) => key == KanaType.hiragana.jsonValue ? l10n.hiragana : l10n.katakana,
          loadEntries: RemoteData.loadKana,
          countLabel: l10n.charactersAvailable,
          loadError: l10n.dataLoadError,
          startLabel: l10n.start,
          countdownSeconds: 3,
          revealLabel: l10n.revealIn,
          progressLabel: l10n.progress,
          finishedLabel: l10n.finished,
          meaningLabel: l10n.meaning,
        );
      case AppPage.kanji:
        return StudySelectionPage<KanjiLevel>(
          title: l10n.kanji,
          selectionTitle: l10n.kanjiSelectionTitle,
          practiceTitle: l10n.practiceTitle,
          practiceCopy: l10n.kanjiPracticeCopy,
          practiceCopy2: l10n.kanjiPracticeCopy2,
          options: KanjiLevel.values,
          optionKey: (level) => level.jsonValue,
          label: (level) => level.jsonValue,
          itemLabel: (key) => key,
          loadEntries: RemoteData.loadKanji,
          countLabel: l10n.charactersAvailable,
          loadError: l10n.dataLoadError,
          startLabel: l10n.start,
          countdownSeconds: 8,
          revealLabel: l10n.revealIn,
          progressLabel: l10n.progress,
          finishedLabel: l10n.finished,
          meaningLabel: l10n.meaning,
        );
      case AppPage.about:
        return AboutPage(
          title: l10n.aboutTitle,
          whyTitle: l10n.aboutWhyTitle,
          whyCopy: l10n.aboutWhyCopy,
          whyCopy2: l10n.aboutWhyCopy2,
          source: l10n.aboutSource,
          credits: l10n.aboutCredits,
          kanjiCredit: l10n.aboutKanjiCredit,
          kanaCredit: l10n.aboutKanaCredit,
          references: l10n.aboutReferences,
          referencesCopy: l10n.aboutReferencesCopy,
          copyright: l10n.aboutCopyright,
          copyrightCopy: l10n.aboutCopyrightCopy,
        );
    }
  }
}
