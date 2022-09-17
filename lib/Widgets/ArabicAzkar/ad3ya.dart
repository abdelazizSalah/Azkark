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
    for (String duaa in ad3yaNabawya) {
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

// if we have a template function we can remove all this donkey work
  void addAd3yaNbawya() {
    for (String duaa in ad3yaNabawya) {
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

  void addAd3yaYoum3rafa() {
    for (String duaa in ad3yaYoum3rafa) {
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

  void addAd3yaGowm3ElDoa2() {
    for (String duaa in ad3yaGowm3ElDoa2) {
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

  void addAd3ya5tmElQuran() {
    for (String duaa in ad3ya5tmElQuran) {
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

  void addAfterleavingthebathroomEn() {
    for (String duaa in AfterleavingthebathroomEn) {
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

  void addAfterleavingthebathroomAr() {
    for (String duaa in AfterleavingthebathroomAr) {
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

  void addBeforeenteringthebathroomEN() {
    for (String duaa in BeforeenteringthebathroomEN) {
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

  void addBeforeenteringthebathroomAr() {
    for (String duaa in BeforeenteringthebathroomAr) {
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

  void addWhengoingtothemosqueAr() {
    for (String duaa in WhengoingtothemosqueAr) {
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

  void addbeforeablutionEN() {
    for (String duaa in BeforeablutionEN) {
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

  void addUponcompletingtheablutionEn() {
    for (String duaa in UponcompletingtheablutionEn) {
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

  void addWhengoingtothemosqueEn() {
    for (String duaa in WhengoingtothemosqueEn) {
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

  void addUponenteringthemosqueEn() {
    for (String duaa in UponenteringthemosqueEn) {
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

  void addUponenteringthemosqueAr() {
    for (String duaa in UponenteringthemosqueAr) {
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

  void addUponleavingtheMosqueEn() {
    for (String duaa in UponleavingtheMosqueEn) {
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

  void addUponleavingtheMosqueAr() {
    for (String duaa in UponleavingtheMosqueAr) {
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

  void addWhenprostratingduetorecitationoftheQuranEn() {
    for (String duaa in WhenprostratingduetorecitationoftheQuranEn) {
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

  void addWhenprostratingduetorecitationoftheQuranAr() {
    for (String duaa in WhenprostratingduetorecitationoftheQuranAr) {
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

  void addForanxietyandsorrowEn() {
    for (String duaa in ForanxietyandsorrowEn) {
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

  void addForanxietyandsorrowAr() {
    for (String duaa in ForanxietyandsorrowAr) {
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

  // ];
  // void duaaDecider(int choice) {
  //   switch (choice) {
  //     case 0:
  //       addAd3yaNbawya();
  //       break;
  //     case 1:
  //       addAd3yaYoum3rafa();
  //       break;
  //     case 2:
  //       addAd3ya5tmElQuran();
  //       break;
  //     case 3:
  //       addAd3yaGowm3ElDoa2();
  //       break;
  //     case 4:
  //       addWhengoingtothemosqueAr();
  //       break;
  //     case 5:
  //       addUponenteringthemosqueAr();
  //       break;
  //     case 6:
  //       addUponleavingtheMosqueAr();
  //       break;
  //     case 7:
  //       addBeforeenteringthebathroomAr();
  //       break;
  //     case 8:
  //       addAfterleavingthebathroomAr();
  //       break;
  //     case 9:
  //       addWhenprostratingduetorecitationoftheQuranAr();
  //       break;
  //     case 10:
  //       addForanxietyandsorrowAr();
  //       break;
  //     case 11:
  //       addBeforeenteringthebathroomEN();
  //       break;
  //     case 12:
  //       addAfterleavingthebathroomEn();
  //       break;
  //     case 13:
  //       addbeforeablutionEN();
  //       break;
  //     case 14:
  //       addUponcompletingtheablutionEn();
  //       break;
  //     case 15:
  //       addWhengoingtothemosqueEn();
  //       break;
  //     case 16:
  //       addUponenteringthemosqueEn();
  //       break;
  //     case 17:
  //       addUponleavingtheMosqueEn();
  //       break;
  //     case 18:
  //       addWhenprostratingduetorecitationoftheQuranEn();
  //       break;
  //     case 19:
  //       addForanxietyandsorrowEn();
  //       break;
  //   }
  // }
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
    WhenprostratingduetorecitationoftheQuranAr,
    ForanxietyandsorrowAr,
    BeforeenteringthebathroomEN,
    BeforeablutionEN,
    UponcompletingtheablutionEn,
    WhengoingtothemosqueEn,
    UponenteringthemosqueEn,
    UponleavingtheMosqueEn,
    WhenprostratingduetorecitationoftheQuranEn,
    ForanxietyandsorrowEn
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
