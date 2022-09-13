import 'package:azkark/Widgets/ArabicAzkar/AzkarElSabah.dart';
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

num currentContextNumberInChoicePage = -1;
void chooseOptioninHomePage(
    BuildContext c, num choice, num where, bool dark, darkModeSetter) {
  if (choice == currentContextNumberInChoicePage && where == 1) return;
  currentContextNumberInChoicePage = choice;
  if (choice == 0) {
    if (where == 0)
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) =>
                  ChoicePage(darkMode: dark, darkModeSetter: darkModeSetter)));
    else
      Navigator.pushReplacement(
          c,
          MaterialPageRoute(
              builder: (c) =>
                  ChoicePage(darkMode: dark, darkModeSetter: darkModeSetter)));
  } else if (choice == 1) {
    if (where == 0)
      Navigator.push(c, MaterialPageRoute(builder: (c) => Doa2ChoicePage()));
    else
      Navigator.pushReplacement(
          c, MaterialPageRoute(builder: (c) => Doa2ChoicePage()));
  } else if (choice == 2) {
    if (where == 0)
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) =>
                  tasabeeh(darkMode: dark, darkModeSetter: darkModeSetter)));
    else
      Navigator.pushReplacement(
          c,
          MaterialPageRoute(
              builder: (c) =>
                  tasabeeh(darkMode: dark, darkModeSetter: darkModeSetter)));
  } else if (choice == 3) {
    Navigator.push(
        c,
        MaterialPageRoute(
            builder: (c) =>
                Settings(darkMode: dark, darkModeSetter: darkModeSetter)));
  }
}

void chooseOptionInAzkar(
    BuildContext c, num choice, bool dark, darkModeSetter) {
  switch (choice) {
    case 1:
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => AzkarElSabah(
                  darkMode: dark, darkModeSetter: darkModeSetter)));
      break;
    case 2:
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => AzkarElMasa2(
                  darkMode: dark, darkModeSetter: darkModeSetter)));
      break;
    case 3:
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => AzkarB3dElSalah(
                  darkMode: dark, darkModeSetter: darkModeSetter)));
      break;
    case 4:
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) =>
                  AzkarElNom(darkMode: dark, darkModeSetter: darkModeSetter)));
      break;
    case 5:
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => AzkarElEstykaz(
                  darkMode: dark, darkModeSetter: darkModeSetter)));
      break;
    case 6:
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => AzkarElSalah(
                  darkMode: dark, darkModeSetter: darkModeSetter)));
      break;
    case 7:
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => AzkarElWodo2(
                  darkMode: dark, darkModeSetter: darkModeSetter)));
      break;
    case 8:
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) =>
                  AzkarElAzan(darkMode: dark, darkModeSetter: darkModeSetter)));
      break;
    case 9:
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => AzkarElMasjed(
                  darkMode: dark, darkModeSetter: darkModeSetter)));
      print(dark);
      break;
    case 10:
      Navigator.push(
          c,
          MaterialPageRoute(
              builder: (c) => AzkarMotafareka(
                  darkMode: dark, darkModeSetter: darkModeSetter)));
      break;
  }
}

void chooseOptioninDoa2Page(BuildContext c, num choice) {
  //change choice in decider of doaa pages
  print("from option doaa2");
  print(choice);
}

void changeMode() {
  //flip boolean to change colors;
}
void changeLanguage() {
  //flip boolean to change language;
}
