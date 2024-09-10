import 'package:azkark/Models/ad3ya_data.dart';
import 'package:azkark/Widgets/AzkarContainer.dart';
import 'package:azkark/Widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';
import '../CustomAppBar.dart';

class ad3ya extends StatelessWidget {
  final darkMode;
  final darkModeSetter;
  final setLang;
  final num choice;
  final bool languageSelected;
  ad3ya(
      {required this.darkMode,
      required this.darkModeSetter,
      required this.setLang,
      required this.choice,
      required this.languageSelected});
  List<Map<String, Object>> ad3yas = [];

  ///this should be used instead of kol el habal el ehna 3mleno tht da
  void addAd3yas(List<String> ad3yasShouldBeAdded) {
    for (String duaa in ad3yasShouldBeAdded) {
      Map<String, Object> newDuaa = {
        'zekr': duaa,
        'counter': 1,
        'initial': 1,
        'fadl': '',
        'title': ''
      };
      ad3yas.add(newDuaa);
    }
  }



  void clearAd3yas() {
    ad3yas.clear();
  }


  /// TODO: Sort these lists and delete all the above functions
  List<List<String>> ad3yaList = [
    ad3yaNabawya,
    ad3yaYoum3rafa,
    ad3ya5tmElQuran,
    ad3yaGowm3ElDoa2,
    WhengoingtothemosqueAr,
    UponenteringthemosqueAr,
    UponleavingtheMosqueAr,
    BeforeenteringthebathroomAr,
    AfterleavingthebathroomAr,
    WhenprostratingduetorecitationoftheQuranAr,
    ForanxietyandsorrowAr,
    BeforeenteringthebathroomEN,
    AfterleavingthebathroomEn,
    BeforeablutionEN,
    UponcompletingtheablutionEn,
    WhengoingtothemosqueEn,
    UponenteringthemosqueEn,
    UponleavingtheMosqueEn,
    WhenprostratingduetorecitationoftheQuranEn,
    ForanxietyandsorrowEn,
    TravelingDuaaAr,
  ];
  void duaaDecider(int choice) {
    addAd3yas(ad3yaList[choice]);
  }

  @override
  Widget build(BuildContext context) {
    clearAd3yas();
    duaaDecider(choice as int);
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(
        setLang: darkModeSetter,
        setMode: setLang,
      ),
      body: AzkarContainer(
        azkary: ad3yas,
      ),
    );
  }
}
