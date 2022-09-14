import 'package:azkark/Models/Choices_data.dart';
import 'package:azkark/Screens/choice_item_screen.dart';
import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static bool darkMode = false;
  static int freq = 1;
  static bool languageChoice=false;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void  toggleButton() {
    setState(() {
      var temp = HomePage.darkMode;
      HomePage.darkMode = !temp;

    });
  }
  void toogleLanguage(bool c){
    setState(() {
     HomePage.languageChoice=c;

    });
  }


  @override
  Widget build(BuildContext context) {
    bool dkWidget = HomePage.darkMode;
   // bool languageC=HomePage.languageChoice;
    // return Scaffold(
    //   body: MainPage(darkMode: dkWidget),
    // );

    /// used to scale the fonts depending on the user settings
    final contentScaleFactor = MediaQuery.textScaleFactorOf(context);
    return MaterialApp(
        theme: ThemeData(
            canvasColor: dkWidget == true
                ? Color.fromARGB(255, 127, 167, 200)
                : Colors.green[100],
            splashColor: dkWidget == false
                ? Color.fromARGB(255, 17, 133, 66)
                : Color.fromARGB(255, 52, 83, 132),
            dividerColor: dkWidget == false
                ? Theme.of(context).accentColor
                : Theme.of(context).accentColor,
            hoverColor: dkWidget == false
                ? Color.fromARGB(255, 118, 164, 120)
                : Color.fromARGB(255, 104, 151, 192),
            focusColor: dkWidget == false
                ? Color.fromARGB(255, 251, 233, 173)
                : Color.fromARGB(255, 237, 206, 113),
            primaryColor:
                dkWidget == false ? Colors.green[300] : Colors.blue[900],
            hintColor: dkWidget == false
                ? Colors.green[500]
                : Color.fromARGB(255, 106, 142, 179),
            accentColor: Color.fromARGB(255, 220, 171, 27),
            errorColor: dkWidget == false
                ? Colors.white
                : Color.fromARGB(255, 251, 217, 167),
            buttonTheme:
                ButtonThemeData(buttonColor: Color.fromARGB(255, 220, 171, 27)),
            fontFamily: 'Gulzar',
            textTheme: TextTheme(
                titleSmall: TextStyle(
                    fontSize: 24 * contentScaleFactor,
                    fontFamily: 'Amiri',
                    color: dkWidget == false ? Colors.amber : Colors.blue),
                titleLarge: TextStyle(
                    letterSpacing: 1.2,
                    fontSize: 38 * contentScaleFactor,
                    color: dkWidget == false ? Colors.white : Colors.amber,
                    shadows: [
                      Shadow(
                          blurRadius: 40,
                          color: Color.fromARGB(255, 220, 171, 27),
                          offset: Offset(20, 5))
                    ]),
                displayMedium: TextStyle(
                    color: Colors.white,
                    fontSize: 18 * contentScaleFactor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'S'),
                bodySmall: TextStyle(
                    fontSize: 25 * contentScaleFactor,
                    color: Colors.black,
                    fontFamily: 'DS-DIGI'),
                bodyMedium: TextStyle(
                    fontSize: 30 * contentScaleFactor,
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
          darkMode: dkWidget,
          darkModeSetter: toggleButton,
        //  languageChoice:languageChoice,
        ));
  }
}

class MainPage extends StatelessWidget {
  final bool darkMode;
  final darkModeSetter;
  //final bool languageChoice;
  MainPage({required this.darkMode, required this.darkModeSetter});
  @override
  Widget build(BuildContext context) {
    //print(languageChoice);
    return Scaffold(
      appBar: CustomAppBar(),
      body: Directionality(
        textDirection: HomePage.languageChoice==false?TextDirection.rtl:TextDirection.ltr,
        child: Container(
          color: Theme.of(context).canvasColor,
          child: GridView(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 7 / 13,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              children:

              HomePage.languageChoice==false?
              ( choices_dataAr
                  .map((ch) => choiceItemScreen(
                      darkModeSetter: darkModeSetter,
                      image: ch.image,
                      word: ch.word,
                      choice: ch.choice,
                      darkMode: darkMode,
              ))
                  .toList()):
              (
            choices_dataEn
            .map((ch) => choiceItemScreen(
          darkModeSetter: darkModeSetter,
          image: ch.image,
          word: ch.word,
          choice: ch.choice,
          darkMode: darkMode))
          .toList())
          )

          ,
        ),
      ),
    );
  }
}
