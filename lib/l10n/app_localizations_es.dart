// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get helloWorld => '¡Hola Mundo!';

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
    return 'Elige niveles de $title';
  }

  @override
  String charactersAvailable(Object count) {
    return '$count caracteres disponibles';
  }

  @override
  String get selectedCharacters => 'Caracteres seleccionados';

  @override
  String dataLoadError(Object title) {
    return 'No se pudieron cargar los datos de $title.';
  }

  @override
  String get aboutTitle => 'Sobre Oboemasu';

  @override
  String get aboutCopy =>
      'Practica kana y kanji japoneses con el orden de trazos animado.';

  @override
  String get about => 'Acerca de';

  @override
  String get start => 'Comenzar';

  @override
  String get revealIn => 'Revelar en';

  @override
  String progress(Object current, Object total) {
    return '$current de $total';
  }

  @override
  String get finished => 'Terminado';

  @override
  String get meaning => 'Significado';

  @override
  String get practiceTitle =>
      'Mejora tu memoria muscular practicando la escritura';

  @override
  String get practiceCopy =>
      'Elige las opciones, toma papel y bolígrafo y pulsa Comenzar.';

  @override
  String get practiceCopy2 =>
      'Escribe el kana o kanji antes de que se acabe el tiempo y observa las animaciones de los trazos.';

  @override
  String get kanaPracticeCopy =>
      'Elige katakana, hiragana o ambos, toma papel y bolígrafo y pulsa Comenzar.';

  @override
  String get kanaPracticeCopy2 =>
      'Escribe el kana antes de que se acabe el tiempo y observa las animaciones de los trazos.';

  @override
  String get kanjiPracticeCopy =>
      'Elige los niveles de kanji, toma papel y bolígrafo y pulsa Comenzar.';

  @override
  String get kanjiPracticeCopy2 =>
      'Escribe el kanji antes de que se acabe el tiempo y observa las animaciones de los trazos.';

  @override
  String get kanaSelectionTitle => 'Elige hiragana, katakana o ambos';

  @override
  String get kanjiSelectionTitle => 'Elige un nivel';

  @override
  String get aboutWhyTitle => '¿Por qué Oboemasu?';

  @override
  String get aboutWhyCopy =>
      'Oboemasu es una forma sencilla de practicar kana y kanji japoneses.';

  @override
  String get aboutWhyCopy2 =>
      'Elige qué quieres estudiar y sigue el orden de los trazos mientras aparece cada carácter.';

  @override
  String get aboutSource => 'Este proyecto es de código abierto:';

  @override
  String get aboutCredits => 'Créditos';

  @override
  String get aboutKanjiCredit => 'Los datos de trazos de kanji proceden de';

  @override
  String get aboutKanaCredit => 'Los datos de trazos de kana proceden de';

  @override
  String get aboutReferences => 'Referencias';

  @override
  String get aboutReferencesCopy =>
      'Estos recursos ayudaron a crear la experiencia de estudio:';

  @override
  String get aboutCopyright => 'Derechos de autor';

  @override
  String get aboutCopyrightCopy =>
      'Los datos japoneses y los trazos están sujetos a sus licencias originales.';
}
