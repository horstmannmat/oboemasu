import 'package:flutter/material.dart';
import 'package:oboemasu/l10n/app_localizations.dart';
import 'package:oboemasu/screens/app_content.dart';
import 'package:oboemasu/screens/language_selector.dart';

class AndroidHomePage extends StatefulWidget {
  const AndroidHomePage({super.key, required this.locale, required this.onLocaleChanged});

  final Locale locale;
  final ValueChanged<Locale> onLocaleChanged;

  @override
  State<AndroidHomePage> createState() => _AndroidHomePageState();
}

class _AndroidHomePageState extends State<AndroidHomePage> {
  AppPage page = AppPage.kana;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
        actions: [
          LanguageSelector(locale: widget.locale, onChanged: widget.onLocaleChanged),
          IconButton(
            onPressed: () => setState(() => page = AppPage.about),
            icon: const Icon(Icons.info_outline),
            tooltip: AppLocalizations.of(context)!.about,
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: page == AppPage.kanji ? 1 : 0,
        onDestinationSelected: (index) => setState(() => page = index == 0 ? AppPage.kana : AppPage.kanji),
        destinations: [
          NavigationDestination(icon: const Text('カ'), label: AppLocalizations.of(context)!.kana),
          NavigationDestination(icon: const Text('漢字'), label: AppLocalizations.of(context)!.kanji),
        ],
      ),
      body: AppContent(page: page),
    );
  }
}