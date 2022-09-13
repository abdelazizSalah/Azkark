import 'package:azkark/Screens/Doa2ChoicePage.dart';

import '../Widgets/ArabicAzkar/ad3ya.dart';
import '../Widgets/ArabicAzkar/tasabeeh.dart';
import '../../main.dart';
import 'package:flutter/material.dart';
import '../main.dart';
void chooseOptioninHomePage(BuildContext c, num choice) {
  if (choice == 0) {
    Navigator.push(c, MaterialPageRoute(builder: (c) => MainPage()));
  } else if (choice == 1) {
    Navigator.push(c, MaterialPageRoute(builder: (c) => Doa2ChoicePage()));
  } else if (choice == 2) {
    Navigator.push(c, MaterialPageRoute(builder: (c) => tasabeeh()));
  } else if (choice == 3) {
    Navigator.push(c, MaterialPageRoute(builder: (c) => MainPage()));
  }
}

void chooseOptioninDoa2Page(BuildContext c, num choice) {
 //change choice in decider of doaa pages
  print("from option doaa2");
  print(choice);
}
