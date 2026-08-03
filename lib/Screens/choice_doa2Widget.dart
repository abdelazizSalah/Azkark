import 'package:azkark/Screens/HomePage.dart';
import 'package:azkark/Widgets/ChoiceImageTile.dart';
import 'package:azkark/controllers/service.dart';
import 'package:flutter/material.dart';

class choice_doa2Widget extends StatelessWidget {
  final String word;
  final String image;
  final num choice;
  final bool darkMode;
  final darkModeSetter;
  final langSetter;

  choice_doa2Widget(this.image, this.word, this.choice, this.darkMode,
      this.darkModeSetter, this.langSetter);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: HomePage.languageChoice == false
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: ChoiceImageTile(
        image: image,
        title: word,
        onTap: () {
          chooseOptioninDoa2Page(
              context, choice, darkMode, darkModeSetter, langSetter);
        },
      ),
    );
  }
}
