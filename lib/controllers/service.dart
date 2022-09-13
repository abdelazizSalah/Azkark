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

num currentContextNumberInChoicePage=-1;
void chooseOptioninHomePage(BuildContext c, num choice,num where) {

  if(choice==currentContextNumberInChoicePage&&where==1)return;
  currentContextNumberInChoicePage=choice;
  if (choice == 0) {
    if(where==0)
      Navigator.push(c, MaterialPageRoute(builder: (c) => ChoicePage()));
    else
      Navigator.pushReplacement(c, MaterialPageRoute(builder: (c) => ChoicePage()));
  } else if (choice == 1) {
    if(where==0)
      Navigator.push(c, MaterialPageRoute(builder: (c) => Doa2ChoicePage()));
    else
      Navigator.pushReplacement(c, MaterialPageRoute(builder: (c) => Doa2ChoicePage()));
  } else if (choice == 2) {
    if(where==0)
      Navigator.push(c, MaterialPageRoute(builder: (c) => tasabeeh()));
    else
      Navigator.pushReplacement(c, MaterialPageRoute(builder: (c) => tasabeeh()));
  } else if (choice == 3) {
    /// Todo add the setting widget
    Navigator.push(c, MaterialPageRoute(builder: (c) => ChoicePage()));
  }
}

void chooseOptionInAzkar(BuildContext c, num choice) {
  switch (choice) {
    case 0:
      Navigator.push(c, MaterialPageRoute(builder: (c) => AzkarElSabah()));
      break;
    case 1:
      Navigator.push(c, MaterialPageRoute(builder: (c) => AzkarElMasa2()));
      break;
    case 2:
      Navigator.push(c, MaterialPageRoute(builder: (c) => AzkarB3dElSalah()));
      break;
    case 3:
      Navigator.push(c, MaterialPageRoute(builder: (c) => AzkarElNom()));
      break;
    case 4:
      Navigator.push(c, MaterialPageRoute(builder: (c) => AzkarElEstykaz()));
      break;
    case 5:
      Navigator.push(c, MaterialPageRoute(builder: (c) => AzkarElSalah()));
      break;
    case 6:
      Navigator.push(c, MaterialPageRoute(builder: (c) => AzkarElWodo2()));
      break;
    case 7:
      Navigator.push(c, MaterialPageRoute(builder: (c) => AzkarElAzan()));
      break;
    case 8:
      Navigator.push(c, MaterialPageRoute(builder: (c) => AzkarElMasjed()));
      break;
    case 9:
      Navigator.push(c, MaterialPageRoute(builder: (c) => AzkarMotafareka()));
      break;
  }
}

void chooseOptioninDoa2Page(BuildContext c, num choice) {
  //change choice in decider of doaa pages
  print("from option doaa2");
  print(choice);
}
