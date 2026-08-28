// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

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
  String get about => 'Über';

  @override
  String get start => 'Starten';

  @override
  String get revealIn => 'Anzeige in';

  @override
  String progress(Object current, Object total) {
    return '$current von $total';
  }

  @override
  String get finished => 'Runde abgeschlossen';

  @override
  String get meaning => 'Bedeutung';

  @override
  String get practiceTitle =>
      'Verbessere dein Muskelgedächtnis durch Schreibübungen';

  @override
  String get practiceCopy =>
      'Wähle die Optionen, nimm Papier und Stift und klicke auf Start.';

  @override
  String get practiceCopy2 =>
      'Schreibe das Kana oder Kanji, bevor die Zeit abläuft, und sieh dir anschließend die Strichanimationen an.';

  @override
  String get kanaPracticeCopy =>
      'Wähle Katakana, Hiragana oder beide, nimm Papier und Stift und klicke auf Start.';

  @override
  String get kanaPracticeCopy2 =>
      'Schreibe das Kana, bevor die Zeit abläuft, und sieh dir die Strichanimationen an.';

  @override
  String get kanjiPracticeCopy =>
      'Wähle Kanji-Stufen, nimm Papier und Stift und klicke auf Start.';

  @override
  String get kanjiPracticeCopy2 =>
      'Schreibe das Kanji, bevor die Zeit abläuft, und sieh dir die Strichanimationen an.';

  @override
  String get kanaSelectionTitle => 'Wähle Hiragana, Katakana oder beide';

  @override
  String get kanjiSelectionTitle => 'Wähle eine Stufe';

  @override
  String get aboutWhyTitle => 'Why I built this';

  @override
  String get aboutWhyCopy =>
      'In the process of learning Japanese I realised that recognising and reading the characters was not enough.';

  @override
  String get aboutWhyCopy2 =>
      'Most flashcard apps show hiragana or katakana and ask you to read it.';

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
      'This site is an open-source project maintained under the GNU AGPL license.';
}
