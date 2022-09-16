import 'package:azkark/Screens/HomePage.dart';
import 'package:azkark/Widgets/ArabicAzkar/AzkarElSabah.dart';
import 'package:azkark/Widgets/ArabicAzkar/ad3ya.dart';
import 'package:azkark/Widgets/EnglishAzkar/EveningAzkar.dart';
import 'package:azkark/Widgets/EnglishAzkar/MorningAzkar.dart';
import 'package:azkark/Widgets/EnglishAzkar/Uponenteringthehome.dart';
import 'package:azkark/Widgets/EnglishAzkar/WhenLeavingHome.dart';
import 'package:azkark/Widgets/EnglishAzkar/WhenWakingup.dart';
import '../Widgets/ArabicAzkar/AzkarElAzan.dart';
import '../Widgets/ArabicAzkar/AzkarB3dElSalah.dart';
import '../Widgets/ArabicAzkar/AzkarElEstykaz.dart';
import '../Widgets/ArabicAzkar/AzkarElMasa2.dart';
import '../Widgets/ArabicAzkar/AzkarElMasjed.dart';
import '../Widgets/ArabicAzkar/AzkarElNom.dart';
import '../Widgets/ArabicAzkar/AzkarElSalah.dart';
import '../Widgets/ArabicAzkar/AzkarElWodo2.dart';
import '../Widgets/ArabicAzkar/AzkarMotafareka.dart';
import 'package:flutter/material.dart';
import '../Screens/ChoicePage.dart';
import '../Widgets/ArabicAzkar/tasabeeh.dart';
import 'package:azkark/Screens/Doa2ChoicePage.dart';
import '../Widgets/Settings.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

num currentContextNumberInChoicePage = -1;
void chooseOptioninHomePage(
    BuildContext c, num choice, num where, setMode, setLang) {
  if (choice == currentContextNumberInChoicePage && where == 1) return;
  currentContextNumberInChoicePage = choice;
  if (choice == 0) {
    if (where == 0)
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => ChoicePage(
                    setLang: setLang,
                    setDarkMode: setMode,
                  )));
    else
      Navigator.pushReplacement(
          c,
          MaterialPageRoute(
              builder: (c) => ChoicePage(
                    setLang: setLang,
                    setDarkMode: setMode,
                  )));
  } else if (choice == 1) {
    if (where == 0)
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => Doa2ChoicePage(
                    langSetter: setLang,
                    modeSetter: setMode,
                  )));
    else
      Navigator.pushReplacement(
          c,
          MaterialPageRoute(
              builder: (c) => Doa2ChoicePage(
                    langSetter: setLang,
                    modeSetter: setMode,
                  )));
  } else if (choice == 2) {
    if (where == 0)
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => tasabeeh(
                    langSetter: setLang,
                    darkModeSetter: setMode,
                  )));
    else
      Navigator.pushReplacement(
          c,
          MaterialPageRoute(
              builder: (c) => tasabeeh(
                    langSetter: setLang,
                    darkModeSetter: setMode,
                  )));
  } else if (choice == 3) {
    print(where);
    if (where == 0)
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => Settings(
                    langSetter: setLang,
                    darkModeSetter: setMode,
                  )));
    else
      Navigator.pushReplacement(
          c,
          MaterialPageRoute(
              builder: (c) =>
                  Settings(langSetter: setLang, darkModeSetter: setMode)));
  }
}

void chooseOptionInAzkar(BuildContext c, num choice, setMode, setLang) {
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
        Navigator.push(c, MaterialPageRoute(builder: (c) => MorningAzkar()));

        break;
      case 2:
        Navigator.push(c, MaterialPageRoute(builder: (c) => EveningAzkar()));

        break;
      case 3:
        Navigator.push(c, MaterialPageRoute(builder: (c) => WhenLeavingHome()));

        break;
      case 4:
        Navigator.push(c, MaterialPageRoute(builder: (c) => WhenWakingup()));

        break;

      case 5:
        Navigator.push(
            c, MaterialPageRoute(builder: (c) => Uponenteringthehome()));

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
              darkModeSetter: darkModeSetter,
              choice: choice,
              setLang: setLang,
              languageSelected: HomePage.languageChoice)));
}

Future openDialog(
        BuildContext context, bool darkMode, darkModeSetter, setLang) =>
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: HomePage.languageChoice == false
                  ? Center(
                      child: Text("بما تشعر؟",
                          style: TextStyle(color: Colors.black)))
                  : Center(
                      child: Text("How do you feel?",
                          style: TextStyle(color: Colors.black, fontSize: 30))),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              insetPadding: EdgeInsets.all(10),
              content: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/imgs/smileface.png",
                            height: 90,
                          ),
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: ElevatedButton(
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
                              child: HomePage.languageChoice == false
                                  ? Text("سبح الله")
                                  : Text("Praise Allah"),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 140,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/imgs/sadface.png",
                            height: 92,
                          ),
                          Container(
                            width: HomePage.languageChoice == true ? 180 : 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (c) => ad3ya(
                                            darkMode: darkMode,
                                            setLang: setLang,
                                            darkModeSetter: darkModeSetter,
                                            choice:
                                                HomePage.languageChoice == false
                                                    ? 4
                                                    : 8,
                                            languageSelected:
                                                HomePage.languageChoice)));
                              },
                              child: HomePage.languageChoice == false
                                  ? Text("دعاء الحزن")
                                  : Text("Anxiety Supplication"),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
