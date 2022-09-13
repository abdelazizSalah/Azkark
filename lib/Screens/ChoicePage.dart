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
  ];

  final List<Map<String, Object>> englishChoices = [{}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Card(
        /// I am using listview not the builder constructor
        /// because here this list is fixed and not dynamicly increasing
        /// so there is no need for the complexity of the builder constructor
        child: ListView(
          children: [
            Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: arabicChoices.map((myMap) {
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
                        chooseOptionInAzkar(context, myMap['number'] as int);
                      },
                    ),
                  );
                }).toList()),
          ],
        ),
      ),
    );
  }
}