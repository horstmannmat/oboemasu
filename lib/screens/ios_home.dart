import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oboemasu/l10n/app_localizations.dart';
import 'package:oboemasu/screens/app_content.dart';

class IosHomePage extends StatefulWidget {
  const IosHomePage({super.key, required this.locale, required this.onLocaleChanged});

  final Locale locale;
  final ValueChanged<Locale> onLocaleChanged;

  @override
  State<IosHomePage> createState() => _IosHomePageState();
}

class _IosHomePageState extends State<IosHomePage> {
  AppPage page = AppPage.kana;

  Future<void> _selectLanguage() async {
    final selected = await showCupertinoModalPopup<Locale>(
      context: context,
      builder: (context) => CupertinoActionSheet(
        title: Text(AppLocalizations.of(context)!.appTitle),
        actions: [
          for (final entry in _languages.entries)
            CupertinoActionSheetAction(
              isDefaultAction: entry.key == widget.locale,
              onPressed: () => Navigator.pop(context, entry.key),
              child: Text(entry.value),
            ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context),
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
      ),
    );
    if (selected != null) widget.onLocaleChanged(selected);
  }

  static final _languages = <Locale, String>{
    const Locale('de'): 'Deutsch',
    const Locale('en'): 'English',
    const Locale('es'): 'Español',
    const Locale('eu'): 'Euskara',
    const Locale('haw'): 'ʻŌlelo Hawaiʻi',
    const Locale('ja'): '日本語',
    const Locale('kk'): 'Қазақша',
    const Locale('ne'): 'नेपाली',
    const Locale('nl'): 'Nederlands',
    const Locale('pt', 'BR'): 'Português (Brasil)',
    const Locale('vi'): 'Tiếng Việt',
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: page == AppPage.kanji ? 1 : 0,
        onTap: (index) => setState(() => page = index == 0 ? AppPage.kana : AppPage.kanji),
        items: [
          BottomNavigationBarItem(icon: const Text('カ'), label: l10n.kana),
          BottomNavigationBarItem(icon: const Text('漢字'), label: l10n.kanji),
        ],
      ),
      tabBuilder: (context, index) => CupertinoTabView(
        builder: (context) => CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text(l10n.appTitle),
            leading: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => CupertinoPageScaffold(
                    navigationBar: CupertinoNavigationBar(middle: Text(l10n.about)),
                    child: AppContent(page: AppPage.about),
                  ),
                ),
              ),
              child: const Icon(CupertinoIcons.info),
            ),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: _selectLanguage,
              child: const Icon(CupertinoIcons.globe),
            ),
          ),
          child: AppContent(page: index == 0 ? AppPage.kana : AppPage.kanji),
        ),
      ),
    );
  }
}