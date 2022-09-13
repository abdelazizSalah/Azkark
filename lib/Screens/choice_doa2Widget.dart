import 'package:azkark/controllers/service.dart';
import 'package:flutter/material.dart';

class choice_doa2Widget extends StatelessWidget {
  final String word;
  final String image;
  final num choice;
  choice_doa2Widget(this.image, this.word, this.choice);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            image,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: () {
            chooseOptioninDoa2Page(context, choice);
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
