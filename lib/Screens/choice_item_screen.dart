import 'package:azkark/Widgets/ChoiceImageTile.dart';
import 'package:azkark/controllers/service.dart';
import 'package:flutter/material.dart';

class choiceItemScreen extends StatelessWidget {
  final String word;
  final String image;
  final num choice;
  final toggleMode;
  final toggleLang;

  choiceItemScreen({
    required this.image,
    required this.toggleMode,
    required this.toggleLang,
    required this.word,
    required this.choice,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceImageTile(
      image: image,
      title: word,
      onTap: () {
        chooseOptioninHomePage(context, choice, 0, toggleMode, toggleLang);
      },
    );
  }
}
