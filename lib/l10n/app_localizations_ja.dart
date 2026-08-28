// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get helloWorld => 'こんにちは！';

  @override
  String get appTitle => 'Oboemasu';

  @override
  String get kana => 'かな';

  @override
  String get hiragana => 'ひらがな';

  @override
  String get katakana => 'カタカナ';

  @override
  String get kanji => '漢字';

  @override
  String chooseTitle(Object title) {
    return '$titleのレベルを選択';
  }

  @override
  String charactersAvailable(Object count) {
    return '$count文字利用可能';
  }

  @override
  String get selectedCharacters => '選択した文字';

  @override
  String dataLoadError(Object title) {
    return '$titleのデータを読み込めませんでした。';
  }

  @override
  String get aboutTitle => 'Oboemasuについて';

  @override
  String get aboutCopy => '日本語のかなと漢字の書き順を練習しましょう。';

  @override
  String get about => 'このゲームについて';

  @override
  String get start => '開始';

  @override
  String get revealIn => '表示まで';

  @override
  String progress(Object current, Object total) {
    return '$current / $total';
  }

  @override
  String get finished => 'ラウンド完了';

  @override
  String get meaning => '意味';

  @override
  String get practiceTitle => '書く練習で筋肉の記憶を鍛えよう';

  @override
  String get practiceCopy => 'オプションを選び、紙とペンを用意して、開始をクリックしてください。';

  @override
  String get practiceCopy2 => '時間切れになる前にかなや漢字を書き、その後で筆順アニメーションを確認しましょう。';

  @override
  String get kanaPracticeCopy => 'カタカナ、ひらがな、または両方を選び、紙とペンを用意して開始をクリックしてください。';

  @override
  String get kanaPracticeCopy2 => '時間切れになる前にかなを書き、その後で筆順アニメーションを確認しましょう。';

  @override
  String get kanjiPracticeCopy => '漢字のレベルを選び、紙とペンを用意して開始をクリックしてください。';

  @override
  String get kanjiPracticeCopy2 => '時間切れになる前に漢字を書き、その後で筆順アニメーションを確認しましょう。';

  @override
  String get kanaSelectionTitle => 'ひらがな、カタカナ、または両方を選択';

  @override
  String get kanjiSelectionTitle => 'レベルを選択';

  @override
  String get aboutWhyTitle => 'このプロジェクトを作った理由';

  @override
  String get aboutWhyCopy => '日本語を学ぶ中で、文字を認識して読むだけでは不十分だと気づきました。';

  @override
  String get aboutWhyCopy2 => '多くのフラッシュカードアプリは、ひらがなやカタカナを見せて読み方を尋ねます。';

  @override
  String get aboutSource => 'このプロジェクトのソースコードはこちらです：';

  @override
  String get aboutCredits => 'クレジット';

  @override
  String get aboutKanjiCredit => '漢字の書き順データ：';

  @override
  String get aboutKanaCredit => 'かなの書き順データ：';

  @override
  String get aboutReferences => '参考資料';

  @override
  String get aboutReferencesCopy => '学習体験の作成に役立ったリソース：';

  @override
  String get aboutCopyright => '著作権';

  @override
  String get aboutCopyrightCopy => 'このサイトはGNU AGPLライセンスのオープンソースプロジェクトです。';
}
