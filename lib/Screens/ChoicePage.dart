import 'package:azkark/Screens/HomePage.dart';

import '/Widgets/CustomAppBar.dart';
import '/Widgets/CustomDrawer.dart';
import '/controllers/service.dart';
import 'package:flutter/material.dart';
import '../Widgets/EnglishAzkar/YourSpecialAzkar.dart';
import '../Widgets/ArabicAzkar/AzkarkEl5asa.dart';

class ChoicePage extends StatelessWidget {
  List<Map<String, Object>> arabicChoices = [
    {
      'zekr': 'أذكار الصباح',
      'number': 1,
    },
    {
      'zekr': 'أذكار المساء',
      'number': 2,
    },
    {
      'zekr': 'أذكار بعد الصلاة',
      'number': 3,
    },
    {
      'zekr': 'أذكار النوم',
      'number': 4,
    },
    {
      'zekr': 'أذكار الاستيقاظ',
      'number': 5,
    },
    {
      'zekr': 'أذكار الصلاة',
      'number': 6,
    },
    {
      'zekr': 'أذكار الوضوء',
      'number': 7,
    },
    {
      'zekr': 'أذكار الاذان',
      'number': 8,
    },
    {
      'zekr': 'أذكار المسجد',
      'number': 9,
    },
    {
      'zekr': 'أذكار متفرقه',
      'number': 10,
    },
    {
      'zekr': 'أذكارك الخاصة',
      'number': 11,
    },
  ];

  final List<Map<String, Object>> englishChoices = [
    {
      'zekr': 'Morning Remembrance',
      'number': 1,
    },
    {
      'zekr': 'Evening Remembrance',
      'number': 2,
    },
    {
      'zekr': 'When Leaving Home',
      'number': 3,
    },
    {
      'zekr': 'When Waking Up',
      'number': 4,
    },
    {
      'zekr': 'Upon Entering Home',
      'number': 5,
    },

    {
      'zekr': 'Your Special Remembrance',
      'number': 6,
    },



  ];

  final setDarkMode;
  final setLang;
  ChoicePage({required this.setDarkMode, required this.setLang});
  @override
  Widget build(BuildContext context) {
    return Scrollable(viewportBuilder: (context, position) {
      return Scaffold(
        floatingActionButton: Container(
          height: 80,
          width: 100,
          child: FloatingActionButton(

              hoverColor: Colors.black,
              backgroundColor:
              HomePage.darkMode==false?
              (Colors.green)
                  :Colors.black12,
              onPressed: ()async{
                 final String name=await openAzkarDialog(context, HomePage.darkMode, setDarkMode, setLang);
                  if(name==null||name.isEmpty)return;
                  print(name);
                 var zekr={

                   'zekr': name.toString(),
                   'counter': 1,
                   'initial': 1,
                   'fadl': '',
                   'title':''


                 };
                  if(HomePage.languageChoice)
                    {
                      YourSpecialAzkar.AzkarkEn.add(zekr);
                    }
                  else{
                      AzkarkEl5asa.AzkarkAr.add(zekr);
                  }
              },
              child: Icon(Icons.add,color:
              HomePage.darkMode==false?
              (Colors.white)
                  :Colors.black12
                ,size: 40,)
          ),
        ),
        appBar: CustomAppBar(),
        drawer: CustomDrawer(
          setLang: setLang,
          setMode: setDarkMode,
        ),
        body: ListView(
          children: [
            Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: HomePage.languageChoice == false
                    ? (arabicChoices.map((myMap) {
                        return Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(10),
                                backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).splashColor)),
                            child: Text(
                              myMap['zekr'] as String,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            onPressed: () {
                              chooseOptionInAzkar(context,
                                  myMap['number'] as int, setDarkMode, setLang);
                            },
                          ),
                        );
                      }).toList())
                    : (englishChoices.map((myMap) {
                        return Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(10),
                                backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).splashColor)),
                            child: Text(
                              myMap['zekr'] as String,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            onPressed: () {
                              chooseOptionInAzkar(context,
                                  myMap['number'] as int, setDarkMode, setLang);
                            },
                          ),
                        );
                      }).toList())),
          ],
        ),
      );
    });
  }
}
