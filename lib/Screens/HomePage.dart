import 'package:azkark/Models/Choices_data.dart';
import 'package:azkark/Screens/choice_item_screen.dart';
import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  bool darkMode = false;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void toggleButton() {
    setState(() {
      print("Enter");
      var temp = !widget.darkMode;
      print(temp);
      print(widget.darkMode);
      widget.darkMode = temp;
      print(widget.darkMode);
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: MainPage(darkMode: widget.darkMode),
    // );
    return MaterialApp(
        theme: ThemeData(
            hoverColor: widget.darkMode == false
                ? Color.fromARGB(255, 118, 164, 120)
                : Color.fromARGB(255, 104, 151, 192),
            focusColor: widget.darkMode == false
                ? Color.fromARGB(255, 251, 233, 173)
                : Color.fromARGB(255, 237, 206, 113),
            primaryColor:
                widget.darkMode == false ? Colors.green[300] : Colors.blue[900],
            hintColor: widget.darkMode == false
                ? Colors.green[500]
                : Color.fromARGB(255, 106, 142, 179),
            accentColor: Color.fromARGB(255, 220, 171, 27),
            splashColor: widget.darkMode == false
                ? Color.fromARGB(255, 17, 133, 66)
                : Color.fromARGB(255, 52, 83, 132),
            errorColor: widget.darkMode == false
                ? Colors.white
                : Color.fromARGB(255, 251, 217, 167),
            buttonTheme:
                ButtonThemeData(buttonColor: Color.fromARGB(255, 220, 171, 27)),
            fontFamily: 'Gulzar',
            textTheme: TextTheme(
                titleLarge: TextStyle(
                    letterSpacing: 1.2,
                    fontSize: 38,
                    color:
                        widget.darkMode == false ? Colors.white : Colors.amber,
                    shadows: [
                      Shadow(
                          blurRadius: 40,
                          color: Color.fromARGB(255, 220, 171, 27),
                          offset: Offset(20, 5))
                    ]),
                displayMedium: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'S'),
                bodySmall: TextStyle(
                    fontSize: 25, color: Colors.black, fontFamily: 'DS-DIGI'),
                bodyMedium: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Amiri',
                    shadows: [
                      Shadow(
                          blurRadius: 40,
                          color: Colors.amberAccent,
                          offset: Offset(20, 6))
                    ]))),
        debugShowCheckedModeBanner: false,
        home: MainPage(
          darkMode: widget.darkMode,
          darkModeSetter: toggleButton,
        ));
  }
}

class MainPage extends StatelessWidget {
  final bool darkMode;
  final darkModeSetter;
  MainPage({required this.darkMode, required this.darkModeSetter});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        color: darkMode == true
            ? Color.fromARGB(255, 127, 167, 200)
            : Colors.green[100],
        child: GridView(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 7 / 12,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            children: choices_dataAr
                .map((ch) => choiceItemScreen(
                    darkModeSetter: darkModeSetter,
                    image: ch.image,
                    word: ch.word,
                    choice: ch.choice,
                    darkMode: darkMode))
                .toList()),
      ),
    );
  }
}
