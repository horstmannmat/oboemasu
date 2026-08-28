// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get helloWorld => 'नमस्कार संसार!';

  @override
  String get appTitle => 'Oboemasu';

  @override
  String get kana => 'काना';

  @override
  String get hiragana => 'हिरागाना';

  @override
  String get katakana => 'काताकाना';

  @override
  String get kanji => 'कान्जी';

  @override
  String chooseTitle(Object title) {
    return '$title स्तर छान्नुहोस्';
  }

  @override
  String charactersAvailable(Object count) {
    return '$count अक्षरहरू उपलब्ध छन्';
  }

  @override
  String get selectedCharacters => 'छानिएका अक्षरहरू';

  @override
  String dataLoadError(Object title) {
    return '$title डेटा लोड गर्न सकिएन।';
  }

  @override
  String get aboutTitle => 'Oboemasu बारेमा';

  @override
  String get aboutCopy =>
      'जापानी काना र कान्जीको स्ट्रोक क्रम अभ्यास गर्नुहोस्।';

  @override
  String get about => 'बारेमा';

  @override
  String get start => 'सुरु गर्नुहोस्';

  @override
  String get revealIn => 'देखाउन बाँकी';

  @override
  String progress(Object current, Object total) {
    return '$current / $total';
  }

  @override
  String get finished => 'समाप्त';

  @override
  String get meaning => 'अर्थ';

  @override
  String get practiceTitle =>
      'लेख्ने अभ्यास गरेर आफ्नो मांसपेशी स्मरणशक्ति सुधार्नुहोस्';

  @override
  String get practiceCopy =>
      'विकल्पहरू छान्नुहोस्, कागज र कलम लिनुहोस् र सुरु गर्नुहोस् मा क्लिक गर्नुहोस्।';

  @override
  String get practiceCopy2 =>
      'समय सकिनुअघि काना वा कान्जी लेख्नुहोस्, अनि स्ट्रोक एनिमेसन हेर्नुहोस्।';

  @override
  String get kanaPracticeCopy =>
      'हिरागाना, काताकाना वा दुवै छान्नुहोस्, कागज र कलम लिनुहोस् र सुरु गर्नुहोस्।';

  @override
  String get kanaPracticeCopy2 =>
      'समय सकिनुअघि काना लेख्नुहोस् र स्ट्रोक एनिमेसन हेर्नुहोस्।';

  @override
  String get kanjiPracticeCopy =>
      'कान्जी स्तरहरू छान्नुहोस्, कागज र कलम लिनुहोस् र सुरु गर्नुहोस्।';

  @override
  String get kanjiPracticeCopy2 =>
      'समय सकिनुअघि कान्जी लेख्नुहोस् र स्ट्रोक एनिमेसन हेर्नुहोस्।';

  @override
  String get kanaSelectionTitle => 'हिरागाना, काताकाना वा दुवै छान्नुहोस्';

  @override
  String get kanjiSelectionTitle => 'एउटा स्तर छान्नुहोस्';

  @override
  String get aboutWhyTitle => 'मैले यो परियोजना किन बनाएँ';

  @override
  String get aboutWhyCopy =>
      'जापानी भाषा सिक्ने क्रममा अक्षर चिन्नु र पढ्नु मात्र पर्याप्त नभएको महसुस भयो।';

  @override
  String get aboutWhyCopy2 =>
      'धेरैजसो फ्ल्यासकार्ड एपले हिरागाना वा काताकाना देखाएर पढ्न लगाउँछन्।';

  @override
  String get aboutSource => 'यस परियोजनाको स्रोत कोड यहाँ हेर्न सक्नुहुन्छ:';

  @override
  String get aboutCredits => 'श्रेय';

  @override
  String get aboutKanjiCredit => 'कान्जी स्ट्रोक डेटा यहाँबाट आएको हो:';

  @override
  String get aboutKanaCredit => 'काना स्ट्रोक डेटा यहाँबाट आएको हो:';

  @override
  String get aboutReferences => 'सन्दर्भहरू';

  @override
  String get aboutReferencesCopy =>
      'यी स्रोतहरूले अध्ययन अनुभव बनाउन मद्दत गरे:';

  @override
  String get aboutCopyright => 'प्रतिलिपि अधिकार';

  @override
  String get aboutCopyrightCopy =>
      'यो GNU AGPL इजाजतपत्रअन्तर्गतको खुला स्रोत परियोजना हो।';
}
