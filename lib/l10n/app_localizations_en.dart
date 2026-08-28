// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get appTitle => 'Oboemasu';

  @override
  String get kana => 'Kana';

  @override
  String get hiragana => 'Hiragana';

  @override
  String get katakana => 'Katakana';

  @override
  String get kanji => 'Kanji';

  @override
  String chooseTitle(Object title) {
    return 'Choose $title levels';
  }

  @override
  String charactersAvailable(Object count) {
    return '$count characters available';
  }

  @override
  String get selectedCharacters => 'Selected characters';

  @override
  String dataLoadError(Object title) {
    return 'Could not load $title data.';
  }

  @override
  String get aboutTitle => 'About Oboemasu';

  @override
  String get aboutCopy =>
      'Practice Japanese kana and kanji with animated stroke order.';

  @override
  String get about => 'About';

  @override
  String get start => 'Start';

  @override
  String get revealIn => 'Reveal in';

  @override
  String progress(Object current, Object total) {
    return '$current of $total';
  }

  @override
  String get finished => 'Finished';

  @override
  String get meaning => 'Meaning';

  @override
  String get practiceTitle =>
      'Improve your muscle memory by practicing writing';

  @override
  String get practiceCopy =>
      'Choose the options, grab a pen and paper, and click Start.';

  @override
  String get practiceCopy2 =>
      'Write the Kana or Kanji before time runs out, then watch the stroke animations.';

  @override
  String get kanaPracticeCopy =>
      'Choose Katakana, Hiragana or both, grab a pen and paper, and click Start.';

  @override
  String get kanaPracticeCopy2 =>
      'Write the Kana before time runs out, then watch the stroke animations.';

  @override
  String get kanjiPracticeCopy =>
      'Choose Kanji levels, grab a pen and paper, and click Start.';

  @override
  String get kanjiPracticeCopy2 =>
      'Write the Kanji before time runs out, then watch the stroke animations.';

  @override
  String get kanaSelectionTitle => 'Choose Hiragana, Katakana, or both';

  @override
  String get kanjiSelectionTitle => 'Choose a level';

  @override
  String get aboutWhyTitle => 'Why I built this';

  @override
  String get aboutWhyCopy =>
      'In the process of learning Japanese I realised that recognising and reading the characters was not enough. When I had to write them, my mind went blank because I had not built the muscle memory to write them quickly.';

  @override
  String get aboutWhyCopy2 =>
      'Most flashcard apps show hiragana or katakana and ask you to read it. This game reverses that process: it gives you the reading and asks you to write the character on paper before revealing the stroke animations.';

  @override
  String get aboutSource => 'You can see this project\'s source code at';

  @override
  String get aboutCredits => 'Credits';

  @override
  String get aboutKanjiCredit => 'Kanji stroke data comes from';

  @override
  String get aboutKanaCredit => 'Kana stroke data comes from';

  @override
  String get aboutReferences => 'References';

  @override
  String get aboutReferencesCopy =>
      'These resources helped shape the study experience:';

  @override
  String get aboutCopyright => 'Copyright';

  @override
  String get aboutCopyrightCopy =>
      'This site is an open-source project maintained under the GNU AGPL license. Feel free to fork, contribute, or share it with other learners.';
}
