import 'package:azkark/Models/Choices_data.dart';
import 'package:azkark/Screens/HomePage.dart';
import 'package:azkark/Screens/choice_doa2Widget.dart';
import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';



class Doa2ChoicePage extends StatefulWidget {
  const Doa2ChoicePage({Key? key}) : super(key: key);


  @override
  State<Doa2ChoicePage> createState() => _Doa2ChoicePageState();
}

class _Doa2ChoicePageState extends State<Doa2ChoicePage> {
  @override
  void  toggleButton() {
    setState(() {
      var temp = HomePage.darkMode;
      HomePage.darkMode = !temp;

    });
  }
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
          children:
          HomePage.languageChoice==false?
          (choices_Doa2Ar
              .map((ch) => choice_doa2Widget(ch.image, ch.word, ch.choice,HomePage.darkMode,toggleButton))
              .toList()):
        choices_Doa2En
        .map((ch) => choice_doa2Widget(ch.image, ch.word, ch.choice,HomePage.darkMode,toggleButton))
         .toList()),
    );
  }
}
