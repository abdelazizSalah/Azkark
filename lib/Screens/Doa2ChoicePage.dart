import 'package:azkark/Models/Choices_data.dart';
import 'package:azkark/Screens/choice_doa2Widget.dart';
import 'package:azkark/Screens/choice_item_screen.dart';
import 'package:flutter/material.dart';

class Doa2ChoicePage extends StatelessWidget {
  const Doa2ChoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          elevation: 10,
          backgroundColor: Theme.of(context).splashColor,
          title: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Text(
              'أذكارك',
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: choices_Doa2Ar
              .map((ch) => choice_doa2Widget(ch.image, ch.word, ch.choice))
              .toList()),
    );
  }
}
