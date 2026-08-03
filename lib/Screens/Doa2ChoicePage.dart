import 'package:azkark/Models/Choices_data.dart';
import 'package:azkark/Screens/HomePage.dart';
import 'package:azkark/Screens/choice_doa2Widget.dart';
import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Doa2ChoicePage extends StatefulWidget {
  final langSetter;
  final modeSetter;
  const Doa2ChoicePage({required this.langSetter, required this.modeSetter});

  @override
  State<Doa2ChoicePage> createState() => _Doa2ChoicePageState();
}

class _Doa2ChoicePageState extends State<Doa2ChoicePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    final choices = HomePage.isArabic
        ? choices_Doa2Ar
        : HomePage.isGerman
            ? choices_Doa2De
            : choices_Doa2En;
    final isPortrait = mediaQuery.orientation == Orientation.portrait;

    final content = isPortrait
        ? GridView(
            padding: const EdgeInsets.all(14),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.58,
              mainAxisSpacing: 14,
              crossAxisSpacing: 14,
            ),
            children: choices
                .map((ch) => choice_doa2Widget(ch.image, ch.word, ch.choice,
                    HomePage.darkMode, widget.modeSetter, widget.langSetter))
                .toList(),
          )
        : ListView.separated(
            padding: const EdgeInsets.all(14),
            scrollDirection: Axis.horizontal,
            itemCount: choices.length,
            separatorBuilder: (_, __) => const SizedBox(width: 14),
            itemBuilder: (context, index) {
              final ch = choices[index];
              return SizedBox(
                width: mediaQuery.size.width * 0.3,
                child: choice_doa2Widget(ch.image, ch.word, ch.choice,
                    HomePage.darkMode, widget.modeSetter, widget.langSetter),
              );
            },
          );

    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [theme.canvasColor, theme.colorScheme.surface],
          ),
        ),
        child: content,
      ),
    );
  }
}
