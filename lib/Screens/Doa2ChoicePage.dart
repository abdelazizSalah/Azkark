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
  Widget build(BuildContext context) {
    final Orientation devOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        appBar: CustomAppBar(),
        body: devOrientation == Orientation.portrait
            ? GridView(
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio:
                      (MediaQuery.of(context).size.height * 0.58) /
                          MediaQuery.of(context).size.height,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: (HomePage.languageChoice == false
                        ? choices_Doa2Ar
                        : choices_Doa2En)
                    .map((ch) => choice_doa2Widget(
                        ch.image,
                        ch.word,
                        ch.choice,
                        HomePage.darkMode,
                        widget.modeSetter,
                        widget.langSetter))
                    .toList())
            : ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: (HomePage.languageChoice == false
                        ? choices_Doa2Ar
                        : choices_Doa2En)
                    .map((ch) => Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.3,
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          child: choice_doa2Widget(
                              ch.image,
                              ch.word,
                              ch.choice,
                              HomePage.darkMode,
                              widget.modeSetter,
                              widget.langSetter),
                        ))
                    .toList()));
  }
}
