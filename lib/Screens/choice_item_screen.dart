import 'package:azkark/controllers/service.dart';
import 'package:flutter/material.dart';

class choiceItemScreen extends StatelessWidget {
  final bool darkMode;
  final darkModeSetter;
  final String word;
  final String image;
  final num choice;
  choiceItemScreen(
      {required this.image,
      required this.word,
      required this.darkModeSetter,
      required this.choice,
      required this.darkMode,
      });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            image,
            height: 450,
            fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: () {
            chooseOptioninHomePage(
                context, choice, 0, darkMode, darkModeSetter);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              word,
              style: TextStyle(fontSize: 30, color: Colors.white),
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
