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
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            image,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: () {
            chooseOptioninHomePage(context, choice, 0, toggleMode, toggleLang);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              word,
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15)),
          ),
        )
      ],
    );
  }
}
