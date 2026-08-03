import 'package:azkark/Screens/HomePage.dart';
import '/Widgets/CustomAppBar.dart';
import '/Widgets/CustomDrawer.dart';
import '/controllers/service.dart';
import 'package:flutter/material.dart';

class ChoicePage extends StatelessWidget {
  static final List<Map<String, Object>> arabicChoices = [
    {'zekr': 'أذكار الصباح', 'number': 1},
    {'zekr': 'أذكار المساء', 'number': 2},
    {'zekr': 'أذكار بعد الصلاة', 'number': 3},
    {'zekr': 'أذكار النوم', 'number': 4},
    {'zekr': 'أذكار الاستيقاظ', 'number': 5},
    {'zekr': 'أذكار الصلاة', 'number': 6},
    {'zekr': 'أذكار الوضوء', 'number': 7},
    {'zekr': 'أذكار الاذان', 'number': 8},
    {'zekr': 'أذكار المسجد', 'number': 9},
    {'zekr': 'أدعية متفرقة', 'number': 10},
  ];

  static final List<Map<String, Object>> englishChoices = [
    {'zekr': 'Morning Remembrance', 'number': 1},
    {'zekr': 'Evening Remembrance', 'number': 2},
    {'zekr': 'When Leaving Home', 'number': 3},
    {'zekr': 'When Waking Up', 'number': 4},
    {'zekr': 'Upon Entering Home', 'number': 5},
  ];

  static final List<Map<String, Object>> germanChoices = [
    {'zekr': 'Morgendliches Gedenken', 'number': 1},
    {'zekr': 'Abendliches Gedenken', 'number': 2},
    {'zekr': 'Beim Verlassen des Hauses', 'number': 3},
    {'zekr': 'Beim Aufwachen', 'number': 4},
    {'zekr': 'Beim Betreten des Hauses', 'number': 5},
  ];
  final setDarkMode;
  final setLang;

  ChoicePage({required this.setDarkMode, required this.setLang});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final choices = HomePage.isArabic
        ? arabicChoices
        : HomePage.isGerman
            ? germanChoices
            : englishChoices;

    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(setLang: setLang, setMode: setDarkMode),
      body: Directionality(
        textDirection:
            HomePage.isArabic ? TextDirection.rtl : TextDirection.ltr,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [theme.canvasColor, theme.colorScheme.surface],
            ),
          ),
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: choices.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final choice = choices[index];
              return Card(
                child: InkWell(
                  borderRadius: BorderRadius.circular(18),
                  onTap: () {
                    chooseOptionInAzkar(context, choice['number'] as int, 3,
                        setDarkMode, setLang);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 18),
                    child: Row(
                      children: [
                        Icon(Icons.menu_book_rounded,
                            color: theme.colorScheme.primary),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Text(
                            choice['zekr'] as String,
                            style: theme.textTheme.displayLarge,
                          ),
                        ),
                        Icon(Icons.chevron_right_rounded,
                            color: theme.highlightColor, size: 32),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
