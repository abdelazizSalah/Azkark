import 'package:azkark/Screens/HomePage.dart';
import 'package:azkark/Widgets/ArabicAzkar/tasabeeh.dart';
import 'package:azkark/Widgets/EnglishAzkar/WhenWakingup.dart';
import 'package:azkark/controllers/scheduler.dart';
import 'package:flutter/material.dart';
import 'Widgets/ChoicePage.dart';
import 'Widgets/ArabicAzkar/AzkarB3dElSalah.dart';
import 'Widgets/ArabicAzkar/AzkarElAzan.dart';
import 'Widgets/ArabicAzkar/AzkarElEstykaz.dart';
import 'Widgets/ArabicAzkar/AzkarElMasa2.dart';
import 'Widgets/ArabicAzkar/AzkarElMasjed.dart';
import 'Widgets/ArabicAzkar/AzkarElNom.dart';
import 'Widgets/ArabicAzkar/AzkarElSabah.dart';
import 'Widgets/ArabicAzkar/AzkarElSalah.dart';
import 'Widgets/ArabicAzkar/AzkarElWodo2.dart';
import 'Widgets/ArabicAzkar/AzkarMotafareka.dart';
import 'Widgets/ArabicAzkar/ad3ya.dart';
import 'Widgets/EnglishAzkar/EveningAzkar.dart';
import 'Widgets/EnglishAzkar/MorningAzkar.dart';
import 'Widgets/EnglishAzkar/Uponenteringthehome.dart';
import 'Widgets/EnglishAzkar/WhenLeavingHome.dart';
import 'Widgets/EnglishAzkar/WhenWakingUp.dart';

void main() {
  /// this is the widget which makes the program waits at the beginning.
  WidgetsFlutterBinding.ensureInitialized();

  /// calling the activators
  fridayZekrActivate();
  DailyZekrActivate();
  runApp(Azkar());
}

class Azkar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          accentColor: Color.fromARGB(255, 220, 171, 27),
          splashColor: Color.fromARGB(255, 17, 133, 66),
          buttonTheme:
              ButtonThemeData(buttonColor: Color.fromARGB(255, 220, 171, 27)),
          fontFamily: 'Gulzar',
          textTheme: TextTheme(
              titleLarge: TextStyle(fontSize: 40, shadows: [
                Shadow(
                    blurRadius: 60,
                    color: Color.fromARGB(255, 220, 171, 27),
                    offset: Offset(20, 5))
              ]),
              bodySmall: TextStyle(
                  fontSize: 25, color: Colors.black, fontFamily: 'DS-DIGI'),
              bodyMedium: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'Amiri',
                  shadows: [
                    Shadow(
                        blurRadius: 40,
                        color: Colors.amberAccent,
                        offset: Offset(20, 6))
                  ]))),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int decider = 0;

  deciderSetter(choice) {
    setState(() {
      decider = choice;
    });
  }

  void decrementCounter(int counter) {
    setState(() {
      if (counter != 0) counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> AzkarList = [
      ChoicePage(decider: decider, deciderSetter: deciderSetter),
      // Zekr(counter: 3, zekr: "الله اكبر", decrementCounter: decrementCounter),
      AzkarElSabah(),
      AzkarElMasa2(),
      AzkarB3dElSalah(),
      AzkarElNom(),
      AzkarElEstykaz(),
      AzkarElSalah(),
      AzkarElWodo2(),
      AzkarElAzan(),
      AzkarElMasjed(),
      AzkarMotafareka(),
      ad3ya(),
      tasabeeh(),
      MorningAzkar(),
      EveningAzkar(),
      Uponenteringthehome(),
      WhenLeavingHome(),
      WhenWakingup(),
    ];

    return Scaffold(
        drawer: Directionality(
          textDirection: TextDirection.rtl,
          child: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 170,
                  child: DrawerHeader(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          color: Theme.of(context).splashColor)
                    ], color: Theme.of(context).splashColor),
                    child: Center(
                      child: Text(
                        'أذكارك',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            shadows: [
                              Shadow(
                                  blurRadius: 40,
                                  color: Theme.of(context).accentColor,
                                  offset: Offset(20, 10))
                            ]),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'أذكار',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  onTap: () {
                    // Update the state of the app
                    setState(() {
                      decider = 0;
                    });
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'تسبيح',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    setState(() {
                      decider = 12;
                    });

                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('أدعية',
                      style: Theme.of(context).textTheme.bodySmall),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    setState(() {
                      decider = 11;
                    });

                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('الاعدادات',
                      style: Theme.of(context).textTheme.bodySmall),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    // setState(() {
                    //   decider = 11;
                    // });
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          elevation: 10,
          actions: [
            FloatingActionButton(
              backgroundColor: Theme.of(context).splashColor,
              elevation: 0,
              onPressed: () {
                setState(() {
                  decider = 0;
                });
              },
              child: Icon(
                Icons.keyboard_return_sharp,
                color: Theme.of(context).accentColor,
              ),
            ),
          ],
          backgroundColor: Theme.of(context).splashColor,
          title: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Text(
              'أذكارك',
            ),
          ),
          centerTitle: true,
        ),
        body: AzkarList[decider]);
  }
}
