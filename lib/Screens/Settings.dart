import 'package:azkark/Screens/privacy_and_policy.dart';
import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:azkark/controllers/app_settings_cache.dart';
import 'package:flutter/material.dart';

import '../Screens/HomePage.dart';

class Settings extends StatefulWidget {
  final darkModeSetter;
  final langSetter;
  Settings({required this.darkModeSetter, required this.langSetter});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String _pick(String ar, String en, String de) {
    if (HomePage.isArabic) return ar;
    if (HomePage.isGerman) return de;
    return en;
  }

  void _setFrequency(int value, String arabicMessage, String englishMessage,
      String germanMessage) {
    HomePage.freq = value;
    AppSettingsCache.save(
      darkMode: HomePage.darkMode,
      languageCode: HomePage.languageCode,
      frequency: HomePage.freq,
    );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Directionality(
          textDirection:
              HomePage.isArabic ? TextDirection.rtl : TextDirection.ltr,
          child: Text(_pick(arabicMessage, englishMessage, germanMessage)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: const CustomAppBar(showHomeButton: true),
      body: Directionality(
        textDirection:
            HomePage.isArabic ? TextDirection.rtl : TextDirection.ltr,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [theme.canvasColor, theme.colorScheme.surface],
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _SettingCard(
                icon: Icons.nightlight_round,
                title: _pick(
                    '\u0627\u0644\u0648\u0636\u0639 \u0627\u0644\u0644\u064a\u0644\u064a',
                    'Night Mode',
                    'Nachtmodus'),
                child: Switch.adaptive(
                  value: HomePage.darkMode,
                  onChanged: (_) => widget.darkModeSetter(),
                ),
              ),
              _SettingCard(
                icon: Icons.notifications_rounded,
                title: _pick(
                    '\u062a\u0643\u0631\u0627\u0631 \u0627\u0644\u062a\u0646\u0628\u064a\u0647\u0627\u062a',
                    'Notification Frequency',
                    'Benachrichtigung'),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _FrequencyButton(
                      label: _pick(
                          '\u0628\u0627\u0633\u062a\u0645\u0631\u0627\u0631',
                          'High',
                          'Hoch'),
                      selected: HomePage.freq == 1,
                      onPressed: () => _setFrequency(
                        1,
                        '\u0627\u0635\u0628\u062d\u062a \u0628\u0627\u0633\u062a\u0645\u0631\u0627\u0631',
                        'Notification frequency is high now',
                        'Benachrichtigungshaeufigkeit ist jetzt hoch',
                      ),
                    ),
                    _FrequencyButton(
                      label: _pick('\u0645\u062a\u0648\u0633\u0637\u0629',
                          'Medium', 'Mittel'),
                      selected: HomePage.freq == 3,
                      onPressed: () => _setFrequency(
                        3,
                        '\u0627\u0635\u0628\u062d\u062a \u0645\u062a\u0648\u0633\u0637\u0629',
                        'Notification frequency is medium now',
                        'Benachrichtigungshaeufigkeit ist jetzt mittel',
                      ),
                    ),
                    _FrequencyButton(
                      label: _pick(
                          '\u0642\u0644\u064a\u0644\u0629', 'Low', 'Niedrig'),
                      selected: HomePage.freq == 5,
                      onPressed: () => _setFrequency(
                        5,
                        '\u0627\u0635\u0628\u062d\u062a \u0642\u0644\u064a\u0644\u0629',
                        'Notification frequency is low now',
                        'Benachrichtigungshaeufigkeit ist jetzt niedrig',
                      ),
                    ),
                  ],
                ),
              ),
              _SettingCard(
                icon: Icons.translate_rounded,
                title: _pick(
                    '\u0627\u0644\u0644\u063a\u0629', 'Language', 'Sprache'),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _FrequencyButton(
                      label: _pick('\u0627\u0644\u0639\u0631\u0628\u064a\u0629',
                          'Arabic', 'Arabisch'),
                      selected: HomePage.isArabic,
                      onPressed: () => widget.langSetter('ar'),
                    ),
                    _FrequencyButton(
                      label: _pick(
                          '\u0627\u0644\u0627\u0646\u062c\u0644\u064a\u0632\u064a\u0629',
                          'English',
                          'Englisch'),
                      selected: HomePage.isEnglish,
                      onPressed: () => widget.langSetter('en'),
                    ),
                    _FrequencyButton(
                      label: _pick(
                          '\u0627\u0644\u0627\u0644\u0645\u0627\u0646\u064a\u0629',
                          'German',
                          'Deutsch'),
                      selected: HomePage.isGerman,
                      onPressed: () => widget.langSetter('de'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const PrivacyScreen()),
                  );
                },
                icon: const Icon(Icons.shield_rounded),
                label: Text(_pick(
                    '\u0627\u0644\u062e\u0635\u0648\u0635\u064a\u0629 \u0648\u0627\u0644\u0633\u064a\u0627\u0633\u0627\u062a',
                    'Privacy & Policies',
                    'Datenschutz & Richtlinien')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget child;

  const _SettingCard({
    required this.icon,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(icon, color: theme.colorScheme.primary),
                const SizedBox(width: 10),
                Expanded(
                    child: Text(title, style: theme.textTheme.displayLarge)),
              ],
            ),
            const SizedBox(height: 14),
            child,
          ],
        ),
      ),
    );
  }
}

class _FrequencyButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onPressed;

  const _FrequencyButton({
    required this.label,
    required this.selected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            selected ? theme.highlightColor : theme.colorScheme.primary,
        foregroundColor: selected && HomePage.darkMode
            ? const Color(0xFF1D1607)
            : Colors.white,
      ),
      child: Text(label),
    );
  }
}
