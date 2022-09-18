import 'package:azkark/Screens/HomePage.dart';
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
    final Orientation devOrientation = MediaQuery.of(context).orientation;
    return Directionality(
      textDirection: HomePage.languageChoice == false
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Stack(
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
              chooseOptioninDoa2Page(
                  context, choice, darkMode, darkModeSetter, langSetter);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                word,
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              decoration: BoxDecoration(
                  color: HomePage.languageChoice == false
                      ? Colors.black.withOpacity(0.4)
                      : Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15)),
            ),
          )
        ],
      ),
    );
  }
}
