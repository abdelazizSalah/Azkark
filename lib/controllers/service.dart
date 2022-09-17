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

void chooseOptionInAzkar(BuildContext c, num choice, setMode, setLang,
    {int where = 0}) {
  // TODO : Fixahaa ya lotfyyy

  // if (choice == currentContextNumberInChoicePage && where == 1) return;
  // currentContextNumberInChoicePage = choice;
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
              title: Center(
                  child: Text(
                      HomePage.languageChoice == false
                          ? "بما تشعر؟"
                          : "How do you feel?",
                      style: Theme.of(context).textTheme.bodySmall)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              insetPadding: EdgeInsets.all(10),
              content: Container(
                // color: Colors.amber,
                height: MediaQuery.of(context).size.height * 0.3,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/imgs/smileface.png",
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
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
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      HomePage.languageChoice == false
                                          ? "سبح الله"
                                          : "Praise Allah",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall),
                                )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/imgs/sadface.png",
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Container(
                            width: HomePage.languageChoice == true
                                ? MediaQuery.of(context).size.width * 0.35
                                : MediaQuery.of(context).size.width * 0.33,
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
                                              choice: HomePage.languageChoice ==
                                                      false
                                                  ? 10
                                                  : 19,
                                              languageSelected:
                                                  HomePage.languageChoice)));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      HomePage.languageChoice == false
                                          ? "دعاء الحزن"
                                          : "Anxiety\nSupplication",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
