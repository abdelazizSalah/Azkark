import '../Widgets/ArabicAzkar/ad3ya.dart';
import '../Widgets/ArabicAzkar/tasabeeh.dart';
import '../../main.dart';
import 'package:flutter/material.dart';

void chooseOptioninHomePage(BuildContext c, num choice) {
  if (choice == 0) {
    Navigator.push(c, MaterialPageRoute(builder: (c) => MainPage()));
  } else if (choice == 1) {
    Navigator.push(c, MaterialPageRoute(builder: (c) => ad3ya()));
  } else if (choice == 2) {
    Navigator.push(c, MaterialPageRoute(builder: (c) => tasabeeh()));
  } else if (choice == 3) {
    Navigator.push(c, MaterialPageRoute(builder: (c) => MainPage()));
  }
}
