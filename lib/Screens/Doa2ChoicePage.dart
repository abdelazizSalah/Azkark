import 'package:azkark/Models/Choices_data.dart';
import 'package:azkark/Screens/choice_doa2Widget.dart';
import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Doa2ChoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 12,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: choices_Doa2Ar
              .map((ch) => choice_doa2Widget(ch.image, ch.word, ch.choice))
              .toList()),
    );
  }
}
