import 'package:azkark/Models/Choices_data.dart';
import 'package:azkark/Screens/choice_item_screen.dart';
import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:azkark/controllers/service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/homePage'; 
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
    final themeOF = Theme.of(context);

    /// used to scale the fonts depending on the user settings
    final contentScaleFactor = MediaQuery.textScaleFactorOf(context);
    return MaterialApp(
        theme: ThemeData(
            canvasColor: dkWidget == true
                ? const Color.fromARGB(255, 127, 167, 200)
                : Colors.green[100],
            splashColor: dkWidget == false
                ? const Color.fromARGB(255, 17, 133, 66)
                : const Color.fromARGB(255, 52, 83, 132),
            dividerColor: themeOF.highlightColor,
            hoverColor: dkWidget == false
                ? const Color.fromARGB(255, 118, 164, 120)
                : const Color.fromARGB(255, 104, 151, 192),
            focusColor: dkWidget == false
                ? const Color.fromARGB(255, 251, 233, 173)
                : const Color.fromARGB(255, 237, 206, 113),
            primaryColor:
                dkWidget == false ? Colors.green[300] : Colors.blue[900],
            hintColor: dkWidget == false
                ? Colors.green[500]
                : const Color.fromARGB(255, 106, 142, 179),
            // backgroundColor: 
            highlightColor: const Color.fromARGB(255, 220, 171, 27),
            disabledColor: dkWidget == false
                ? Colors.white
                : const Color.fromARGB(255, 251, 217, 167),
            // errorColor: dkWidget == false
            //     ? Colors.white
            //     : const Color.fromARGB(255, 251, 217, 167),
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
                      const Shadow(
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
                    // shadows: [
                    //   Shadow(
                    //       blurRadius: dkWidget == true ? 20 : 30,
                    //       offset: const Offset(5, 5),
                    //       color: Colors.black)
                    // ]
                    ),
                displayMedium: TextStyle(
                    color: Colors.white,
                    fontSize: 16 * contentScaleFactor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Amiri'),
                bodySmall: TextStyle(
                    fontSize: 21 * contentScaleFactor,
                    color: Colors.black,
                    // wordSpacing: 2,
                    height: 2,
                    // fontFamily: 'DS-DIGI'
                    fontFamily: 'Amiri'
                    ),
                displayLarge: TextStyle(
                    fontFamily: 'Amiri',
                    fontSize: 25 * contentScaleFactor,
                    fontWeight: FontWeight.bold),
                bodyMedium: TextStyle(
                    fontSize: 24 * contentScaleFactor,
                    color: Colors.white,
                    fontFamily: 'Amiri',
                    shadows: const  [
                       Shadow(
                          blurRadius: 40,
                          color: Colors.amberAccent,
                          offset:  Offset(20, 6))
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
    final mediaQuery = MediaQuery.of(context);
    final themeOF = Theme.of(context);
    final Orientation devOrientation = mediaQuery.orientation;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Container(
        child: FloatingActionButton(
            backgroundColor: themeOF.splashColor,
            foregroundColor: themeOF.focusColor,
            onPressed: () {
              openDialog(context, darkMode, darkModeSetter, LangSetter);
            },
            child: const Icon(
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
            color: themeOF.canvasColor,
            child: GridView(
                padding: const EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: (mediaQuery.size.height *
                          (devOrientation == Orientation.portrait
                              ? 0.58
                              : 0.65)) /
                      mediaQuery.size.height,
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
