// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get helloWorld => 'Kaixo mundua!';

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
    return 'Hautatu $title mailak';
  }

  @override
  String charactersAvailable(Object count) {
    return '$count karaktere erabilgarri';
  }

  @override
  String get selectedCharacters => 'Hautatutako karaktereak';

  @override
  String dataLoadError(Object title) {
    return 'Ezin izan dira $title datuak kargatu.';
  }

  @override
  String get aboutTitle => 'Oboemasu-ri buruz';

  @override
  String get aboutCopy =>
      'Landu japoniar kana eta kanji-en trazu-ordena animatuekin.';

  @override
  String get about => 'Honi buruz';

  @override
  String get start => 'Hasi';

  @override
  String get revealIn => 'Erakusteko';

  @override
  String progress(Object current, Object total) {
    return '$current / $total';
  }

  @override
  String get finished => 'Txanda osatuta';

  @override
  String get meaning => 'Esanahia';

  @override
  String get practiceTitle =>
      'Hobetu zure muskulu-memoria idazketa praktikatuz';

  @override
  String get practiceCopy =>
      'Hautatu aukerak, hartu papera eta boligrafoa, eta egin klik Hasi botoian.';

  @override
  String get practiceCopy2 =>
      'Idatzi kana edo kanjia denbora amaitu aurretik, eta ikusi trazu-animazioak.';

  @override
  String get kanaPracticeCopy =>
      'Hautatu katakana, hiragana edo biak, hartu papera eta boligrafoa, eta egin klik Hasi.';

  @override
  String get kanaPracticeCopy2 =>
      'Idatzi kana denbora amaitu aurretik, eta ikusi trazu-animazioak.';

  @override
  String get kanjiPracticeCopy =>
      'Hautatu kanji mailak, hartu papera eta boligrafoa, eta egin klik Hasi.';

  @override
  String get kanjiPracticeCopy2 =>
      'Idatzi kanjia denbora amaitu aurretik, eta ikusi trazu-animazioak.';

  @override
  String get kanaSelectionTitle => 'Hautatu hiragana, katakana edo biak';

  @override
  String get kanjiSelectionTitle => 'Hautatu maila bat';

  @override
  String get aboutWhyTitle => 'Zergatik sortu nuen hau';

  @override
  String get aboutWhyCopy =>
      'Japoniera ikastean konturatu nintzen karaktereak ezagutzea eta irakurtzea ez zela nahikoa.';

  @override
  String get aboutWhyCopy2 =>
      'Flashcard aplikazio gehienek hiragana edo katakana erakusten dute eta irakurtzeko eskatzen dute.';

  @override
  String get aboutSource =>
      'Proiektu honen iturburu-kodea hemen ikus dezakezu:';

  @override
  String get aboutCredits => 'Kredituak';

  @override
  String get aboutKanjiCredit => 'Kanji trazu-datuak hemendik datoz:';

  @override
  String get aboutKanaCredit => 'Kana trazu-datuak hemendik datoz:';

  @override
  String get aboutReferences => 'Erreferentziak';

  @override
  String get aboutReferencesCopy =>
      'Baliabide hauek ikasketa-esperientzia sortzen lagundu zuten:';

  @override
  String get aboutCopyright => 'Copyrighta';

  @override
  String get aboutCopyrightCopy =>
      'Gune hau GNU AGPL lizentziapean mantentzen den kode irekiko proiektua da.';
}
