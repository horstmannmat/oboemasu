import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_haw.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('eu'),
    Locale('haw'),
    Locale('ja'),
    Locale('kk'),
    Locale('ne'),
    Locale('nl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('vi'),
  ];

  /// No description provided for @helloWorld.
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get helloWorld;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Oboemasu'**
  String get appTitle;

  /// No description provided for @kana.
  ///
  /// In en, this message translates to:
  /// **'Kana'**
  String get kana;

  /// No description provided for @hiragana.
  ///
  /// In en, this message translates to:
  /// **'Hiragana'**
  String get hiragana;

  /// No description provided for @katakana.
  ///
  /// In en, this message translates to:
  /// **'Katakana'**
  String get katakana;

  /// No description provided for @kanji.
  ///
  /// In en, this message translates to:
  /// **'Kanji'**
  String get kanji;

  /// No description provided for @chooseTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose {title} levels'**
  String chooseTitle(Object title);

  /// No description provided for @charactersAvailable.
  ///
  /// In en, this message translates to:
  /// **'{count} characters available'**
  String charactersAvailable(Object count);

  /// No description provided for @selectedCharacters.
  ///
  /// In en, this message translates to:
  /// **'Selected characters'**
  String get selectedCharacters;

  /// No description provided for @dataLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load {title} data.'**
  String dataLoadError(Object title);

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About Oboemasu'**
  String get aboutTitle;

  /// No description provided for @aboutCopy.
  ///
  /// In en, this message translates to:
  /// **'Practice Japanese kana and kanji with animated stroke order.'**
  String get aboutCopy;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @revealIn.
  ///
  /// In en, this message translates to:
  /// **'Reveal in'**
  String get revealIn;

  /// No description provided for @progress.
  ///
  /// In en, this message translates to:
  /// **'{current} of {total}'**
  String progress(Object current, Object total);

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get finished;

  /// No description provided for @meaning.
  ///
  /// In en, this message translates to:
  /// **'Meaning'**
  String get meaning;

  /// No description provided for @practiceTitle.
  ///
  /// In en, this message translates to:
  /// **'Improve your muscle memory by practicing writing'**
  String get practiceTitle;

  /// No description provided for @practiceCopy.
  ///
  /// In en, this message translates to:
  /// **'Choose the options, grab a pen and paper, and click Start.'**
  String get practiceCopy;

  /// No description provided for @practiceCopy2.
  ///
  /// In en, this message translates to:
  /// **'Write the Kana or Kanji before time runs out, then watch the stroke animations.'**
  String get practiceCopy2;

  /// No description provided for @kanaPracticeCopy.
  ///
  /// In en, this message translates to:
  /// **'Choose Katakana, Hiragana or both, grab a pen and paper, and click Start.'**
  String get kanaPracticeCopy;

  /// No description provided for @kanaPracticeCopy2.
  ///
  /// In en, this message translates to:
  /// **'Write the Kana before time runs out, then watch the stroke animations.'**
  String get kanaPracticeCopy2;

  /// No description provided for @kanjiPracticeCopy.
  ///
  /// In en, this message translates to:
  /// **'Choose Kanji levels, grab a pen and paper, and click Start.'**
  String get kanjiPracticeCopy;

  /// No description provided for @kanjiPracticeCopy2.
  ///
  /// In en, this message translates to:
  /// **'Write the Kanji before time runs out, then watch the stroke animations.'**
  String get kanjiPracticeCopy2;

  /// No description provided for @kanaSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose Hiragana, Katakana, or both'**
  String get kanaSelectionTitle;

  /// No description provided for @kanjiSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose a level'**
  String get kanjiSelectionTitle;

  /// No description provided for @aboutWhyTitle.
  ///
  /// In en, this message translates to:
  /// **'Why I built this'**
  String get aboutWhyTitle;

  /// No description provided for @aboutWhyCopy.
  ///
  /// In en, this message translates to:
  /// **'In the process of learning Japanese I realised that recognising and reading the characters was not enough. When I had to write them, my mind went blank because I had not built the muscle memory to write them quickly.'**
  String get aboutWhyCopy;

  /// No description provided for @aboutWhyCopy2.
  ///
  /// In en, this message translates to:
  /// **'Most flashcard apps show hiragana or katakana and ask you to read it. This game reverses that process: it gives you the reading and asks you to write the character on paper before revealing the stroke animations.'**
  String get aboutWhyCopy2;

  /// No description provided for @aboutSource.
  ///
  /// In en, this message translates to:
  /// **'You can see this project\'s source code at'**
  String get aboutSource;

  /// No description provided for @aboutCredits.
  ///
  /// In en, this message translates to:
  /// **'Credits'**
  String get aboutCredits;

  /// No description provided for @aboutKanjiCredit.
  ///
  /// In en, this message translates to:
  /// **'Kanji stroke data comes from'**
  String get aboutKanjiCredit;

  /// No description provided for @aboutKanaCredit.
  ///
  /// In en, this message translates to:
  /// **'Kana stroke data comes from'**
  String get aboutKanaCredit;

  /// No description provided for @aboutReferences.
  ///
  /// In en, this message translates to:
  /// **'References'**
  String get aboutReferences;

  /// No description provided for @aboutReferencesCopy.
  ///
  /// In en, this message translates to:
  /// **'These resources helped shape the study experience:'**
  String get aboutReferencesCopy;

  /// No description provided for @aboutCopyright.
  ///
  /// In en, this message translates to:
  /// **'Copyright'**
  String get aboutCopyright;

  /// No description provided for @aboutCopyrightCopy.
  ///
  /// In en, this message translates to:
  /// **'This site is an open-source project maintained under the GNU AGPL license. Feel free to fork, contribute, or share it with other learners.'**
  String get aboutCopyrightCopy;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'de',
    'en',
    'es',
    'eu',
    'haw',
    'ja',
    'kk',
    'ne',
    'nl',
    'pt',
    'vi',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'eu':
      return AppLocalizationsEu();
    case 'haw':
      return AppLocalizationsHaw();
    case 'ja':
      return AppLocalizationsJa();
    case 'kk':
      return AppLocalizationsKk();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
