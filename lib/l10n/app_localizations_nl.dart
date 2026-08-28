// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get helloWorld => 'Hallo wereld!';

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
    return 'Kies $title-niveaus';
  }

  @override
  String charactersAvailable(Object count) {
    return '$count tekens beschikbaar';
  }

  @override
  String get selectedCharacters => 'Geselecteerde tekens';

  @override
  String dataLoadError(Object title) {
    return 'De gegevens van $title konden niet worden geladen.';
  }

  @override
  String get aboutTitle => 'Over Oboemasu';

  @override
  String get aboutCopy =>
      'Oefen Japanse kana en kanji met geanimeerde streepvolgorde.';

  @override
  String get about => 'Over';

  @override
  String get start => 'Starten';

  @override
  String get revealIn => 'Onthullen over';

  @override
  String progress(Object current, Object total) {
    return '$current van $total';
  }

  @override
  String get finished => 'Voltooid';

  @override
  String get meaning => 'Betekenis';

  @override
  String get practiceTitle =>
      'Verbeter je spiergeheugen door te oefenen met schrijven';

  @override
  String get practiceCopy =>
      'Kies de opties, pak pen en papier en klik op Start.';

  @override
  String get practiceCopy2 =>
      'Schrijf de kana of kanji voordat de tijd om is en bekijk daarna de streepanimaties.';

  @override
  String get kanaPracticeCopy =>
      'Kies katakana, hiragana of beide, pak pen en papier en klik op Start.';

  @override
  String get kanaPracticeCopy2 =>
      'Schrijf de kana voordat de tijd om is en bekijk daarna de streepanimaties.';

  @override
  String get kanjiPracticeCopy =>
      'Kies kanji-niveaus, pak pen en papier en klik op Start.';

  @override
  String get kanjiPracticeCopy2 =>
      'Schrijf de kanji voordat de tijd om is en bekijk daarna de streepanimaties.';

  @override
  String get kanaSelectionTitle => 'Kies hiragana, katakana of beide';

  @override
  String get kanjiSelectionTitle => 'Kies een niveau';

  @override
  String get aboutWhyTitle => 'Waarom ik dit heb gemaakt';

  @override
  String get aboutWhyCopy =>
      'Tijdens het leren van Japans merkte ik dat tekens herkennen en lezen niet genoeg was.';

  @override
  String get aboutWhyCopy2 =>
      'De meeste flashcard-apps tonen hiragana of katakana en vragen je het te lezen.';

  @override
  String get aboutSource => 'Je kunt de broncode van dit project bekijken op';

  @override
  String get aboutCredits => 'Credits';

  @override
  String get aboutKanjiCredit => 'Kanji-streepgegevens komen van';

  @override
  String get aboutKanaCredit => 'Kana-streepgegevens komen van';

  @override
  String get aboutReferences => 'Referenties';

  @override
  String get aboutReferencesCopy =>
      'Deze bronnen hielpen de studie-ervaring vorm te geven:';

  @override
  String get aboutCopyright => 'Auteursrecht';

  @override
  String get aboutCopyrightCopy =>
      'Deze site is een opensourceproject onder de GNU AGPL-licentie.';
}
