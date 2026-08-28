// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hawaiian (`haw`).
class AppLocalizationsHaw extends AppLocalizations {
  AppLocalizationsHaw([String locale = 'haw']) : super(locale);

  @override
  String get helloWorld => 'Aloha honua!';

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
    return 'Koho i nā pae $title';
  }

  @override
  String charactersAvailable(Object count) {
    return '$count mau huapalapala i loaʻa';
  }

  @override
  String get selectedCharacters => 'Nā huapalapala i koho ʻia';

  @override
  String dataLoadError(Object title) {
    return 'ʻAʻole hiki ke hoʻouka i nā ʻikepili $title.';
  }

  @override
  String get aboutTitle => 'No Oboemasu';

  @override
  String get aboutCopy =>
      'E hoʻomaʻamaʻa i ka kana a me ka kanji Kepanī me ka hoʻonohonoho kaha animated.';

  @override
  String get about => 'No mākou';

  @override
  String get start => 'Hoʻomaka';

  @override
  String get revealIn => 'Hōʻike i loko o';

  @override
  String progress(Object current, Object total) {
    return '$current o $total';
  }

  @override
  String get finished => 'Pau';

  @override
  String get meaning => 'Manaʻo';

  @override
  String get practiceTitle =>
      'E hoʻomaikaʻi i kou hoʻomanaʻo ʻiʻo ma ka hoʻomaʻamaʻa kākau';

  @override
  String get practiceCopy =>
      'Koho i nā koho, lawe i ka pepa a me ka peni, a kaomi iā Hoʻomaka.';

  @override
  String get practiceCopy2 =>
      'Kākau i ka Kana a i ʻole Kanji ma mua o ka pau ʻana o ka manawa, a nānā i nā hana kaha.';

  @override
  String get kanaPracticeCopy =>
      'Koho iā Katakana, Hiragana, a i ʻole nā mea ʻelua, lawe i ka pepa a me ka peni, a kaomi iā Hoʻomaka.';

  @override
  String get kanaPracticeCopy2 =>
      'Kākau i ka Kana ma mua o ka pau ʻana o ka manawa, a nānā i nā hana kaha.';

  @override
  String get kanjiPracticeCopy =>
      'Koho i nā pae Kanji, lawe i ka pepa a me ka peni, a kaomi iā Hoʻomaka.';

  @override
  String get kanjiPracticeCopy2 =>
      'Kākau i ka Kanji ma mua o ka pau ʻana o ka manawa, a nānā i nā hana kaha.';

  @override
  String get kanaSelectionTitle =>
      'Koho iā Hiragana, Katakana, a i ʻole nā mea ʻelua';

  @override
  String get kanjiSelectionTitle => 'Koho i kahi pae';

  @override
  String get aboutWhyTitle => 'No ke aha i kūkulu ai au i kēia';

  @override
  String get aboutWhyCopy =>
      'I ke aʻo ʻana i ka ʻōlelo Kepanī, ʻike au ʻaʻole lawa ka ʻike a me ka heluhelu ʻana i nā huapalapala.';

  @override
  String get aboutWhyCopy2 =>
      'Hōʻike ka hapa nui o nā polokalamu flashcard i ka hiragana a i ʻole katakana a noi iā ʻoe e heluhelu.';

  @override
  String get aboutSource => 'Hiki iā ʻoe ke ʻike i ke kumu o kēia papahana ma';

  @override
  String get aboutCredits => 'Nā mahalo';

  @override
  String get aboutKanjiCredit => 'No kēia mai ka ʻikepili kaha kanji:';

  @override
  String get aboutKanaCredit => 'No kēia mai ka ʻikepili kaha kana:';

  @override
  String get aboutReferences => 'Nā kūmole';

  @override
  String get aboutReferencesCopy =>
      'Ua kōkua kēia mau kumuwaiwai i ke kūkulu ʻana i ka ʻike aʻo:';

  @override
  String get aboutCopyright => 'Kuleana kope';

  @override
  String get aboutCopyrightCopy =>
      'He papahana open-source kēia pūnaewele ma lalo o ka laikini GNU AGPL.';
}
