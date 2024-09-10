import '../Screens/HomePage.dart';
import '../Widgets/ArabicAzkar/AzkarElSabah.dart';
import '../Widgets/ArabicAzkar/ad3ya.dart';
import '../Widgets/EnglishAzkar/EveningAzkar.dart';
import '../Widgets/EnglishAzkar/MorningAzkar.dart';
import '../Widgets/EnglishAzkar/Uponenteringthehome.dart';
import '../Widgets/EnglishAzkar/WhenLeavingHome.dart';
import '../Widgets/EnglishAzkar/WhenWakingup.dart';
import '../Widgets/ArabicAzkar/AzkarElAzan.dart';
import '../Widgets/ArabicAzkar/AzkarB3dElSalah.dart';
import '../Widgets/ArabicAzkar/AzkarElEstykaz.dart';
import '../Widgets/ArabicAzkar/AzkarElMasa2.dart';
import '../Widgets/ArabicAzkar/AzkarElMasjed.dart';
import '../Widgets/ArabicAzkar/AzkarElNom.dart';
import '../Widgets/ArabicAzkar/AzkarElSalah.dart';
import '../Widgets/ArabicAzkar/AzkarElWodo2.dart';
import '../Widgets/ArabicAzkar/AzkarMotafareka.dart';
import '../Screens/ChoicePage.dart';
import '../Widgets/ArabicAzkar/tasabeeh.dart';
import '../Screens/Doa2ChoicePage.dart';
import '../Screens/Settings.dart';
import 'package:flutter/material.dart';

num currentContextNumberInChoicePage = -1;
void chooseOptioninHomePage(
    BuildContext c, num choice, num where, setMode, setLang) {
  if (currentContextNumberInChoicePage == 3) {
    currentContextNumberInChoicePage = choice;

    if (choice == 0) {
      Navigator.pushAndRemoveUntil(
          c,
          MaterialPageRoute(
              builder: (c) => ChoicePage(
                    setLang: setLang,
                    setDarkMode: setMode,
                  )),
          ModalRoute.withName('/'));
    } else if (choice == 1) {
      Navigator.pushAndRemoveUntil(
          c,
          MaterialPageRoute(
              builder: (c) => Doa2ChoicePage(
                    langSetter: setLang,
                    modeSetter: setMode,
                  )),
          ModalRoute.withName('/'));
    } else if (choice == 2) {
      Navigator.pushAndRemoveUntil(
          c,
          MaterialPageRoute(
              builder: (c) => tasabeeh(
                    langSetter: setLang,
                    darkModeSetter: setMode,
                  )),
          ModalRoute.withName('/'));
    } else if (choice == 3) {
      Navigator.pushAndRemoveUntil(
          c,
          MaterialPageRoute(
              builder: (c) => Settings(
                    langSetter: setLang,
                    darkModeSetter: setMode,
                  )),
          ModalRoute.withName('/'));
    } else { 
      Navigator.pushAndRemoveUntil(
          c,
          MaterialPageRoute(
              builder: (c) => HomePage(
                  )),
          ModalRoute.withName('/'));
    }
    return;
  }
  if ((choice == currentContextNumberInChoicePage && where == 1)) return;
  currentContextNumberInChoicePage = choice;
  if (choice == 0) {
    if (where == 0) {
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => ChoicePage(
                    setLang: setLang,
                    setDarkMode: setMode,
                  )));
    } else {
      Navigator.pushReplacement(
          c,
          MaterialPageRoute(
              builder: (c) => ChoicePage(
                    setLang: setLang,
                    setDarkMode: setMode,
                  )));
    }
    
  } else if (choice == 1) {
    if (where == 0) {
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => Doa2ChoicePage(
                    langSetter: setLang,
                    modeSetter: setMode,
                  )));
    } else {
      Navigator.pushReplacement(
          c,
          MaterialPageRoute(
              builder: (c) => Doa2ChoicePage(
                    langSetter: setLang,
                    modeSetter: setMode,
                  )));
    }
  } else if (choice == 2) {
    if (where == 0) {
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => tasabeeh(
                    langSetter: setLang,
                    darkModeSetter: setMode,
                  )));
    } else {
      Navigator.pushReplacement(
          c,
          MaterialPageRoute(
              builder: (c) => tasabeeh(
                    langSetter: setLang,
                    darkModeSetter: setMode,
                  )));
    }
  } else if (choice == 3) {
    if (where == 0) {
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => Settings(
                    langSetter: setLang,
                    darkModeSetter: setMode,
                  )));
    } else {
      Navigator.pushReplacement(
          c,
          MaterialPageRoute(
              builder: (c) =>
                  Settings(langSetter: setLang, darkModeSetter: setMode)));
    }
  } else { 
      Navigator.pushAndRemoveUntil(
          c,
          MaterialPageRoute(
              builder: (c) => HomePage(
                  )),
          ModalRoute.withName('/'));
    }
}

void chooseOptionInAzkar(
  BuildContext c,
  num choice,
  int where,
  setMode,
  setLang,
) {
  // TODO : Fixahaa ya lotfyyy

  // if (choice == currentContextNumberInChoicePage && where == 1) return;
  // currentContextNumberInChoicePage = choice;
  currentContextNumberInChoicePage = 3;
  if (!HomePage.languageChoice) {
    switch (choice) {
      case 1:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => AzkarElSabah(
                      langSetter: setLang,
                      darkModeSetter: setMode,
                    )));
        break;
      case 2:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => AzkarElMasa2(
                      langSetter: setLang,
                      darkModeSetter: setMode,
                    )));
        break;
      case 3:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => AzkarB3dElSalah(
                      langSetter: setLang,
                      darkModeSetter: setMode,
                    )));
        break;
      case 4:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => AzkarElNom(
                      langSetter: setLang,
                      darkModeSetter: setMode,
                    )));
        break;
      case 5:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => AzkarElEstykaz(
                      langSetter: setLang,
                      darkModeSetter: setMode,
                    )));
        break;
      case 6:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => AzkarElSalah(
                      langSetter: setLang,
                      darkModeSetter: setMode,
                    )));
        break;
      case 7:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => AzkarElWodo2(
                      langSetter: setLang,
                      darkModeSetter: setMode,
                    )));
        break;
      case 8:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => AzkarElAzan(
                      langSetter: setLang,
                      darkModeSetter: setMode,
                    )));
        break;
      case 9:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => AzkarElMasjed(
                      langSetter: setLang,
                      darkModeSetter: setMode,
                    )));

        break;
      case 10:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => AzkarMotafareka(
                      langSetter: setLang,
                      darkModeSetter: setMode,
                    )));
        break;
    }
  } else {
    switch (choice) {
      case 1:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => MorningAzkar(
                      darkModeSetter: setMode,
                      langSetter: setLang,
                    )));

        break;
      case 2:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => EveningAzkar(
                      darkModeSetter: setMode,
                      langSetter: setLang,
                    )));

        break;
      case 3:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => WhenLeavingHome(
                      darkModeSetter: setMode,
                      langSetter: setLang,
                    )));

        break;
      case 4:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => WhenWakingup(
                      darkModeSetter: setMode,
                      langSetter: setLang,
                    )));

        break;

      case 5:
        Navigator.push(
            c,
            MaterialPageRoute(
                builder: (c) => Uponenteringthehome(
                      darkModeSetter: setMode,
                      langSetter: setLang,
                    )));

        break;
    }
  }
}

void chooseOptioninDoa2Page(
    BuildContext c, num choice, bool dark, darkModeSetter, setLang) {
  //change choice in decider of doaa pages

  Navigator.push(
      c,
      MaterialPageRoute(
          builder: (c) => ad3ya(
              darkMode: HomePage.darkMode,
              darkModeSetter: setLang,
              choice: choice,
              setLang: darkModeSetter,
              languageSelected: HomePage.languageChoice)));
}

Future openDialog(
        BuildContext context, bool darkMode, darkModeSetter, setLang) =>
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                    HomePage.languageChoice == false
                        ? "بما تشعر؟"
                        : "How do you feel?",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 30
                            : 38,
                        color: Theme.of(context).splashColor)),
              )),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              insetPadding: EdgeInsets.symmetric(horizontal: 8),
              content: Container(
                /// the main
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.3
                        : MediaQuery.of(context).size.height * 0.5,
                width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.width
                        : MediaQuery.of(context).size.width * 0.5,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      /// smile Face container
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.3
                          : MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.35
                          : MediaQuery.of(context).size.width * 0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.asset(
                              "assets/imgs/gratitude.png",
                              height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? MediaQuery.of(context).size.height * 0.2
                                  : MediaQuery.of(context).size.height * 0.3,
                            ),
                          ),
                          Container(
                            /// satisfied container
                            height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? MediaQuery.of(context).size.height * 0.3 * 0.2
                                : MediaQuery.of(context).size.height *
                                    0.5 *
                                    0.2,
                            width: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? MediaQuery.of(context).size.width * 0.4
                                : MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Theme.of(context).splashColor)),
                                onPressed: () {
                                  Navigator.pop(context);

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (c) => tasabeeh(
                                                langSetter: setLang,
                                                darkModeSetter: darkModeSetter,
                                              )));
                                },
                                child: Text(
                                  HomePage.languageChoice == false
                                      ? "سبح الله"
                                      : "Praise Allah",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: HomePage.languageChoice == true
                                          ? 14 *
                                              MediaQuery.textScaleFactorOf(
                                                  context)
                                          : 22 *
                                              MediaQuery.textScaleFactorOf(
                                                  context),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'DG-DIGI'),
                                )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      /// anixeity container
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.3
                          : MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.4
                          : MediaQuery.of(context).size.width * 0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.asset(
                              "assets/imgs/Sadness.png",
                              height: MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? MediaQuery.of(context).size.height * 0.2
                                  : MediaQuery.of(context).size.height * 0.3,
                            ),
                          ),
                          Container(
                            /// anixeity button
                            height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? MediaQuery.of(context).size.height * 0.3 * 0.2
                                : MediaQuery.of(context).size.height *
                                    0.5 *
                                    0.2,
                            width: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? MediaQuery.of(context).size.width * 0.4
                                : MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Theme.of(context).splashColor)),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (c) => ad3ya(
                                              darkMode: darkMode,
                                              setLang: setLang,
                                              darkModeSetter: darkModeSetter,
                                              choice: HomePage.languageChoice ==
                                                      false
                                                  ? 10
                                                  : 19,
                                              languageSelected:
                                                  HomePage.languageChoice)));
                                },
                                child: Text(
                                  HomePage.languageChoice == false
                                      ? "دعاء الحزن"
                                      : "Anxiety\nSupplication",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: HomePage.languageChoice == true
                                          ? 12 *
                                              MediaQuery.textScaleFactorOf(
                                                  context)
                                          : 22 *
                                              MediaQuery.textScaleFactorOf(
                                                  context),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'DG-DIGI'),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
