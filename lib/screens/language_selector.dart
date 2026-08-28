import 'package:flutter/material.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key, required this.locale, required this.onChanged});

  final Locale locale;
  final ValueChanged<Locale> onChanged;

  static final languages = <Locale, String>{
    Locale('de'): 'Deutsch',
    Locale('en'): 'English',
    Locale('es'): 'Español',
    Locale('eu'): 'Euskara',
    Locale('haw'): 'ʻŌlelo Hawaiʻi',
    Locale('ja'): '日本語',
    Locale('kk'): 'Қазақша',
    Locale('ne'): 'नेपाली',
    Locale('nl'): 'Nederlands',
    Locale('pt', 'BR'): 'Português (Brasil)',
    Locale('vi'): 'Tiếng Việt',
  };

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<Locale>(
        value: languages.keys.any((item) => item == locale) ? locale : const Locale('en'),
        icon: const Icon(Icons.expand_more),
        isDense: true,
        onChanged: (value) {
          if (value != null) onChanged(value);
        },
        items: languages.entries
            .map((entry) => DropdownMenuItem<Locale>(value: entry.key, child: Text(entry.value)))
            .toList(),
      ),
    );
  }
}
