import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';
import 'package:oboemasu/l10n/app_localizations.dart';
import 'package:oboemasu/screens/android_home.dart';
import 'package:oboemasu/screens/desktop_home.dart';
import 'package:oboemasu/screens/ios_home.dart';

class _FallbackMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _FallbackMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<MaterialLocalizations> load(Locale locale) {
    final resolvedLocale = GlobalMaterialLocalizations.delegate.isSupported(locale) ? locale : const Locale('en');
    return GlobalMaterialLocalizations.delegate.load(resolvedLocale);
  }

  @override
  bool shouldReload(_FallbackMaterialLocalizationsDelegate old) => false;
}

class _FallbackWidgetsLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _FallbackWidgetsLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<WidgetsLocalizations> load(Locale locale) {
    final resolvedLocale = GlobalWidgetsLocalizations.delegate.isSupported(locale) ? locale : const Locale('en');
    return GlobalWidgetsLocalizations.delegate.load(resolvedLocale);
  }

  @override
  bool shouldReload(_FallbackWidgetsLocalizationsDelegate old) => false;
}

class _FallbackCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _FallbackCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) {
    final resolvedLocale = GlobalCupertinoLocalizations.delegate.isSupported(locale) ? locale : const Locale('en');
    return GlobalCupertinoLocalizations.delegate.load(resolvedLocale);
  }

  @override
  bool shouldReload(_FallbackCupertinoLocalizationsDelegate old) => false;
}

Locale _userLocale() {
  final userLocale = WidgetsBinding.instance.platformDispatcher.locale;
  final supportedLocales = AppLocalizations.supportedLocales;

  for (final supportedLocale in supportedLocales) {
    if (supportedLocale == userLocale) return supportedLocale;
  }
  for (final supportedLocale in supportedLocales) {
    if (supportedLocale.languageCode == userLocale.languageCode) return supportedLocale;
  }
  return const Locale('en');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LiquidGlassWidgets.initialize();
  runApp(LiquidGlassWidgets.wrap(
    child: const MyApp(),
    brightnessResolver: Theme.maybeBrightnessOf,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  late Locale locale = _userLocale();
  Brightness brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    setState(() => brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness);
  }

  @override
  Widget build(BuildContext context) {
    // Linux / Windows / macOS / Web
    if (kIsWeb ||
        defaultTargetPlatform == TargetPlatform.linux ||
        defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      return MaterialApp(
        title: 'Oboemasu',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        themeMode: ThemeMode.system,
        locale: locale,
        home: DesktopHomePage(locale: locale, onLocaleChanged: (value) => setState(() => locale = value)),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          _FallbackMaterialLocalizationsDelegate(),
          _FallbackWidgetsLocalizationsDelegate(),
        ],
        supportedLocales: AppLocalizations.supportedLocales,
      );
    }

    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialApp(
      title: 'Oboemasu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,

      localizationsDelegates: const [
        AppLocalizations.delegate,
        _FallbackMaterialLocalizationsDelegate(),
        _FallbackWidgetsLocalizationsDelegate(),
        _FallbackCupertinoLocalizationsDelegate(),
      ],

      locale: locale,
      supportedLocales: AppLocalizations.supportedLocales,

        home: AndroidHomePage(locale: locale, onLocaleChanged: (value) => setState(() => locale = value)),
      );
    }

    return CupertinoApp(
      title: 'Oboemasu',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: brightness),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        _FallbackMaterialLocalizationsDelegate(),
        _FallbackWidgetsLocalizationsDelegate(),
        _FallbackCupertinoLocalizationsDelegate(),
      ],
      locale: locale,
      supportedLocales: AppLocalizations.supportedLocales,
      home: IosHomePage(locale: locale, onLocaleChanged: (value) => setState(() => locale = value)),
    );
  }
}
