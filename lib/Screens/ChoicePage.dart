import 'package:azkark/Screens/HomePage.dart';

import '/Widgets/CustomAppBar.dart';
import '/Widgets/CustomDrawer.dart';
import '/controllers/service.dart';
import 'package:flutter/material.dart';

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
      'zekr': 'When Leaving Home Remembrance',
      'number': 3,
    },
    {
      'zekr': 'When Waking Up Remembrance',
      'number': 4,
    },
    {
      'zekr': 'Upon Entering Home Remembrance',
      'number': 5,
    },
    {
      'zekr': 'Your Special Remembrance',
      'number': 6,
    },

  ];
  final darkMode;
  final darkModeSetter;
  ChoicePage({required this.darkMode, required this.darkModeSetter});
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
              darkMode==false?
              (Colors.green)
                  :Colors.black12,
              onPressed: (){
                openDialog(context,darkMode,darkModeSetter);
              },
              child: Icon(Icons.add,color:
              darkMode==false?
              (Colors.white)
                  :Colors.black12
                ,size: 40,)
          ),
        ),
        appBar: CustomAppBar(),
        drawer: CustomDrawer(
          darkMode: darkMode,
          darkModeSetter: darkModeSetter,
        ),
        body: ListView(
          children: [
            Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:
                HomePage.languageChoice==false?
                (arabicChoices.map((myMap) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
                        chooseOptionInAzkar(context, myMap['number'] as int,
                            darkMode, darkModeSetter);
                      },
                    ),
                  );
                }).toList()):
            (
          englishChoices.map((myMap) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
              chooseOptionInAzkar(context, myMap['number'] as int,
                  darkMode, darkModeSetter);
            },
          ),
        );
      }).toList())
            )
            ,
          ],
        ),
      );
    });
  }
}
