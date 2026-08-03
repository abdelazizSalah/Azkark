import 'package:azkark/Screens/HomePage.dart';
import 'package:azkark/localization/german_translations.dart';
import 'package:flutter/material.dart';

class Zekr extends StatelessWidget {
  final zekr;
  final title;
  final fayda;
  final counter;
  final decrementCounter;
  final resetCounter;

  const Zekr({
    required this.zekr,
    required this.title,
    required this.fayda,
    required this.counter,
    required this.decrementCounter,
    required this.resetCounter,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textScale = MediaQuery.textScalerOf(context);
    final completed = counter == 0;
    final isDark = HomePage.darkMode;
    final cardGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: isDark
          ? [const Color(0xFF112F55), const Color(0xFF061A33)]
          : [const Color(0xFFFFFFF7), const Color(0xFFF0FAEA)],
    );
    final textPanelColor =
        isDark ? const Color(0xFF173F69) : const Color(0xFFE4F4DC);
    final benefitColor =
        isDark ? const Color(0xFFE9C86A) : const Color(0xFF2E7D32);
    final displayTitle =
        HomePage.isGerman ? GermanTranslations.translate('$title') : '$title';
    final displayZekr =
        HomePage.isGerman ? GermanTranslations.translate('$zekr') : '$zekr';
    final displayFayda =
        HomePage.isGerman ? GermanTranslations.translate('$fayda') : '$fayda';

    return Directionality(
      textDirection: HomePage.languageChoice == false
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: cardGradient,
            border: Border.all(color: theme.highlightColor, width: 1.3),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 16, 18, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _Ornament(color: theme.highlightColor),
                const SizedBox(height: 10),
                if (displayTitle.trim().isNotEmpty) ...[
                  Text(
                    displayTitle,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontSize: textScale.scale(22),
                      color: theme.highlightColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                    color: textPanelColor,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: theme.highlightColor.withValues(alpha: 0.65),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withValues(alpha: isDark ? 0.24 : 0.08),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Text(
                    displayZekr,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontSize: textScale.scale(21),
                      color: isDark
                          ? const Color(0xFFFFF7DF)
                          : const Color(0xFF17351F),
                    ),
                  ),
                ),
                if (displayFayda.trim().isNotEmpty) ...[
                  const SizedBox(height: 12),
                  Text(
                    displayFayda,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: benefitColor,
                      fontSize: textScale.scale(14),
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                    ),
                  ),
                ],
                const SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(
                      height: 62,
                      width: 62,
                      child: ElevatedButton(
                        onPressed: resetCounter,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme.highlightColor,
                          foregroundColor:
                              isDark ? const Color(0xFF1C1607) : Colors.white,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        child: const Icon(Icons.restart_alt_rounded, size: 32),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: completed
                              ? theme.hoverColor
                              : theme.colorScheme.primary,
                          minimumSize: const Size.fromHeight(62),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                          shadowColor: Colors.black.withValues(alpha: 0.28),
                          elevation: 5,
                        ),
                        onPressed: decrementCounter,
                        child: Text(
                          counter.toString(),
                          style: TextStyle(
                            fontFamily: 'DS-Digital',
                            height: 1,
                            fontSize: 50,
                            color: completed
                                ? theme.colorScheme.onSurface
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Ornament extends StatelessWidget {
  final Color color;

  const _Ornament({required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child:
                Divider(color: color.withValues(alpha: 0.65), thickness: 1.2)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.star_rounded, color: color, size: 18),
        ),
        Expanded(
            child:
                Divider(color: color.withValues(alpha: 0.65), thickness: 1.2)),
      ],
    );
  }
}
