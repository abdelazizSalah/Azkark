import 'package:azkark/Models/Choices_data.dart';
import 'package:azkark/Screens/choice_item_screen.dart';
import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:azkark/controllers/service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static bool darkMode = false;
  static int freq = 1;

  /// false -> arabic
  static bool languageChoice = false;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void toggleMode() {
    setState(() {
      var temp = HomePage.darkMode;
      HomePage.darkMode = !temp;
    });
  }

  void toggleLanguage(bool val) {
    setState(() {
      HomePage.languageChoice = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool dkWidget = HomePage.darkMode;

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
                          color: Color.fromARGB(255, 250, 187, 0),
                          offset: Offset(20, 5))
                    ]),
                labelMedium: TextStyle(
                    fontFamily: 'DS-DIGI',
                    color: dkWidget == true ? Colors.amber : Colors.white,
                    fontSize: HomePage.languageChoice
                        ? 23 * contentScaleFactor
                        : 27 * contentScaleFactor,
                    shadows: [
                      Shadow(
                          blurRadius: dkWidget == true ? 50 : 30,
                          offset: Offset(5, 5),
                          color: Colors.black)
                    ]),
                // displaySmall: TextStyle(
                //     color: Colors.white,
                //     fontSize: devOrientation == Orientation.landscape
                //         ? 18 * contentScaleFactor
                //         : 22 * contentScaleFactor,
                //     fontWeight: FontWeight.bold,
                //     fontFamily: 'DG-DIGI'),
                displayMedium: TextStyle(
                    color: Colors.white,
                    fontSize: 22 * contentScaleFactor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Amiri'),
                bodySmall: TextStyle(
                    fontSize: 28 * contentScaleFactor,
                    color: Colors.black,
                    fontFamily: 'DS-DIGI'),
                displayLarge: TextStyle(
                    fontFamily: 'Amiri',
                    fontSize: 25 * contentScaleFactor,
                    fontWeight: FontWeight.bold),
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
          LangSetter: toggleLanguage,
          darkMode: dkWidget,
          darkModeSetter: toggleMode,
        ));
  }
}

class MainPage extends StatelessWidget {
  final bool darkMode;
  final darkModeSetter;
  final LangSetter;
  //final bool languageChoice;
  MainPage(
      {required this.darkMode,
      required this.darkModeSetter,
      required this.LangSetter});

  @override
  Widget build(BuildContext context) {
    final Orientation devOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Container(
        child: FloatingActionButton(
            backgroundColor: Theme.of(context).splashColor,
            foregroundColor: Theme.of(context).focusColor,
            onPressed: () {
              openDialog(context, darkMode, darkModeSetter, LangSetter);
            },
            child: Icon(
              Icons.hail_sharp,
              size: 40,
            )),
      ),
      appBar: CustomAppBar(),
      body: Directionality(
        textDirection: HomePage.languageChoice == false
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Container(
            color: Theme.of(context).canvasColor,
            child: GridView(
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  // childAspectRatio: 7 / 12,
                  childAspectRatio: (MediaQuery.of(context).size.height *
                          (devOrientation == Orientation.portrait
                              ? 0.58
                              : 0.65)) /
                      MediaQuery.of(context).size.height,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: (HomePage.languageChoice == false
                        ? choices_dataAr
                        : choices_dataEn)
                    .map((ch) => choiceItemScreen(
                          image: ch.image,
                          word: ch.word,
                          choice: ch.choice,
                          toggleMode: darkModeSetter,
                          toggleLang: LangSetter,
                        ))
                    .toList())),
      ),
    );
  }
}
