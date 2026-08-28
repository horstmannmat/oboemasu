// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get helloWorld => 'Сәлем әлем!';

  @override
  String get appTitle => 'Oboemasu';

  @override
  String get kana => 'Кана';

  @override
  String get hiragana => 'Хирагана';

  @override
  String get katakana => 'Катакана';

  @override
  String get kanji => 'Кандзи';

  @override
  String chooseTitle(Object title) {
    return '$title деңгейлерін таңдаңыз';
  }

  @override
  String charactersAvailable(Object count) {
    return '$count таңба қолжетімді';
  }

  @override
  String get selectedCharacters => 'Таңдалған таңбалар';

  @override
  String dataLoadError(Object title) {
    return '$title деректерін жүктеу мүмкін болмады.';
  }

  @override
  String get aboutTitle => 'Oboemasu туралы';

  @override
  String get aboutCopy => 'Жапон кана және кандзи жазу тәртібін үйреніңіз.';

  @override
  String get about => 'Жоба туралы';

  @override
  String get start => 'Бастау';

  @override
  String get revealIn => 'Көрсетуге дейін';

  @override
  String progress(Object current, Object total) {
    return '$current / $total';
  }

  @override
  String get finished => 'Раунд аяқталды';

  @override
  String get meaning => 'Мағынасы';

  @override
  String get practiceTitle =>
      'Жазуды жаттықтыру арқылы бұлшықет жадыңызды жақсартыңыз';

  @override
  String get practiceCopy =>
      'Опцияларды таңдаңыз, қағаз бен қалам алып, Бастау түймесін басыңыз.';

  @override
  String get practiceCopy2 =>
      'Уақыт біткенше кана немесе кандзиді жазып, содан кейін штрих анимацияларын көріңіз.';

  @override
  String get kanaPracticeCopy =>
      'Хирагана, катакана немесе екеуін таңдаңыз, қағаз бен қалам алып, Бастау түймесін басыңыз.';

  @override
  String get kanaPracticeCopy2 =>
      'Уақыт біткенше кананы жазып, содан кейін штрих анимацияларын көріңіз.';

  @override
  String get kanjiPracticeCopy =>
      'Кандзи деңгейлерін таңдаңыз, қағаз бен қалам алып, Бастау түймесін басыңыз.';

  @override
  String get kanjiPracticeCopy2 =>
      'Уақыт біткенше кандзиді жазып, содан кейін штрих анимацияларын көріңіз.';

  @override
  String get kanaSelectionTitle =>
      'Хирагана, катакана немесе екеуін де таңдаңыз';

  @override
  String get kanjiSelectionTitle => 'Деңгейді таңдаңыз';

  @override
  String get aboutWhyTitle => 'Бұл жобаны не үшін жасадым';

  @override
  String get aboutWhyCopy =>
      'Жапон тілін үйрену барысында таңбаларды тану мен оқу жеткіліксіз екенін түсіндім.';

  @override
  String get aboutWhyCopy2 =>
      'Көптеген флеш-карта қолданбалары хирагана немесе катакананы көрсетіп, оқуды сұрайды.';

  @override
  String get aboutSource => 'Жобаның бастапқы кодын мына жерден көре аласыз:';

  @override
  String get aboutCredits => 'Авторлық үлестер';

  @override
  String get aboutKanjiCredit => 'Кандзи жазу деректері:';

  @override
  String get aboutKanaCredit => 'Кана жазу деректері:';

  @override
  String get aboutReferences => 'Анықтамалар';

  @override
  String get aboutReferencesCopy =>
      'Бұл ресурстар оқу тәжірибесін жасауға көмектесті:';

  @override
  String get aboutCopyright => 'Авторлық құқық';

  @override
  String get aboutCopyrightCopy =>
      'Бұл GNU AGPL лицензиясындағы ашық бастапқы кодты жоба.';
}
