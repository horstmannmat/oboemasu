// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get helloWorld => 'Olá mundo!';

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
    return 'Escolha os níveis de $title';
  }

  @override
  String charactersAvailable(Object count) {
    return '$count caracteres disponíveis';
  }

  @override
  String get selectedCharacters => 'Caracteres selecionados';

  @override
  String dataLoadError(Object title) {
    return 'Não foi possível carregar os dados de $title.';
  }

  @override
  String get aboutTitle => 'Sobre o Oboemasu';

  @override
  String get aboutCopy =>
      'Pratique a ordem dos traços de kana e kanji japoneses.';

  @override
  String get about => 'Sobre';

  @override
  String get start => 'Iniciar';

  @override
  String get revealIn => 'Revelar em';

  @override
  String progress(Object current, Object total) {
    return '$current de $total';
  }

  @override
  String get finished => 'Concluído';

  @override
  String get meaning => 'Significado';

  @override
  String get practiceTitle =>
      'Melhore sua memória muscular praticando a escrita';

  @override
  String get practiceCopy =>
      'Escolha as opções, pegue papel e caneta e clique em Começar.';

  @override
  String get practiceCopy2 =>
      'Escreva o Kana ou Kanji antes que o tempo acabe e veja as animações dos traços.';

  @override
  String get kanaPracticeCopy =>
      'Escolha katakana, hiragana ou ambos, pegue papel e caneta e clique em Começar.';

  @override
  String get kanaPracticeCopy2 =>
      'Escreva o Kana antes que o tempo acabe e veja as animações dos traços.';

  @override
  String get kanjiPracticeCopy =>
      'Escolha os níveis de kanji, pegue papel e caneta e clique em Começar.';

  @override
  String get kanjiPracticeCopy2 =>
      'Escreva o Kanji antes que o tempo acabe e veja as animações dos traços.';

  @override
  String get kanaSelectionTitle => 'Escolha hiragana, katakana ou ambos';

  @override
  String get kanjiSelectionTitle => 'Escolha um nível';

  @override
  String get aboutWhyTitle => 'Por que criei este projeto';

  @override
  String get aboutWhyCopy =>
      'Ao aprender japonês, percebi que reconhecer e ler os caracteres não era suficiente.';

  @override
  String get aboutWhyCopy2 =>
      'A maioria dos aplicativos de flashcards mostra hiragana ou katakana e pede que você leia.';

  @override
  String get aboutSource => 'Você pode ver o código-fonte deste projeto em';

  @override
  String get aboutCredits => 'Créditos';

  @override
  String get aboutKanjiCredit => 'Os dados dos traços de kanji vêm de';

  @override
  String get aboutKanaCredit => 'Os dados dos traços de kana vêm de';

  @override
  String get aboutReferences => 'Referências';

  @override
  String get aboutReferencesCopy =>
      'Estes recursos ajudaram a criar a experiência de estudo:';

  @override
  String get aboutCopyright => 'Direitos autorais';

  @override
  String get aboutCopyrightCopy =>
      'Este site é um projeto de código aberto sob a licença GNU AGPL.';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get helloWorld => 'Olá mundo!';

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
    return 'Escolha os níveis de $title';
  }

  @override
  String charactersAvailable(Object count) {
    return '$count caracteres disponíveis';
  }

  @override
  String get selectedCharacters => 'Caracteres selecionados';

  @override
  String dataLoadError(Object title) {
    return 'Não foi possível carregar os dados de $title.';
  }

  @override
  String get aboutTitle => 'Sobre o Oboemasu';

  @override
  String get aboutCopy =>
      'Pratique a ordem dos traços de kana e kanji japoneses.';

  @override
  String get about => 'Sobre';

  @override
  String get start => 'Iniciar';

  @override
  String get revealIn => 'Revelar em';

  @override
  String progress(Object current, Object total) {
    return '$current de $total';
  }

  @override
  String get finished => 'Concluído';

  @override
  String get meaning => 'Significado';

  @override
  String get practiceTitle =>
      'Melhore sua memória muscular praticando a escrita';

  @override
  String get practiceCopy =>
      'Escolha as opções, pegue papel e caneta e clique em Começar.';

  @override
  String get practiceCopy2 =>
      'Escreva o Kana ou Kanji antes que o tempo acabe e veja as animações dos traços.';

  @override
  String get kanaPracticeCopy =>
      'Escolha katakana, hiragana ou ambos, pegue papel e caneta e clique em Começar.';

  @override
  String get kanaPracticeCopy2 =>
      'Escreva o Kana antes que o tempo acabe e veja as animações dos traços.';

  @override
  String get kanjiPracticeCopy =>
      'Escolha os níveis de kanji, pegue papel e caneta e clique em Começar.';

  @override
  String get kanjiPracticeCopy2 =>
      'Escreva o Kanji antes que o tempo acabe e veja as animações dos traços.';

  @override
  String get kanaSelectionTitle => 'Escolha hiragana, katakana ou ambos';

  @override
  String get kanjiSelectionTitle => 'Escolha um nível';

  @override
  String get aboutWhyTitle => 'Por que criei este projeto';

  @override
  String get aboutWhyCopy =>
      'Ao aprender japonês, percebi que reconhecer e ler os caracteres não era suficiente.';

  @override
  String get aboutWhyCopy2 =>
      'A maioria dos aplicativos de flashcards mostra hiragana ou katakana e pede que você leia.';

  @override
  String get aboutSource => 'Você pode ver o código-fonte deste projeto em';

  @override
  String get aboutCredits => 'Créditos';

  @override
  String get aboutKanjiCredit => 'Os dados dos traços de kanji vêm de';

  @override
  String get aboutKanaCredit => 'Os dados dos traços de kana vêm de';

  @override
  String get aboutReferences => 'Referências';

  @override
  String get aboutReferencesCopy =>
      'Estes recursos ajudaram a criar a experiência de estudo:';

  @override
  String get aboutCopyright => 'Direitos autorais';

  @override
  String get aboutCopyrightCopy =>
      'Este site é um projeto de código aberto sob a licença GNU AGPL.';
}
