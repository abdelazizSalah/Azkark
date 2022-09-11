import 'package:azkark/Widgets/Zekr.dart';
import 'package:azkark/controllers/scheduler.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Widgets/ChoicePage.dart';
import 'Widgets/AzkarB3dElSalah.dart';
import 'Widgets/AzkarElAzan.dart';
import 'Widgets/AzkarElEstykaz.dart';
import 'Widgets/AzkarElMasa2.dart';
import 'Widgets/AzkarElMasjed.dart';
import 'Widgets/AzkarElNom.dart';
import 'Widgets/AzkarElSabah.dart';
import 'Widgets/AzkarElSalah.dart';
import 'Widgets/AzkarElWodo2.dart';
import 'Widgets/AzkarMotafareka.dart';
import 'package:cron/cron.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/scheduler.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  fridayZekrActivate();
  DailyZekrActivate();
  runApp(const Azkar());
}

class Azkar extends StatelessWidget {
  const Azkar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          accentColor: Colors.amber,
          splashColor: Color.fromARGB(255, 12, 189, 86),
          // textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
          buttonTheme: ButtonThemeData(buttonColor: Colors.amber),
          fontFamily: 'Gulzar',
          textTheme: TextTheme(
              titleLarge: TextStyle(fontSize: 40, shadows: [
                Shadow(
                    blurRadius: 40, color: Colors.yellow, offset: Offset(20, 5))
              ]),
              bodySmall: TextStyle(
                  fontSize: 25, color: Colors.black, fontFamily: 'Amiri'),
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
      home: MainPage(),
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
      AzkarMotafareka()
    ];

    return Scaffold(
      drawer:Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 12, 189, 86),
          ),
          child: Text('اذكارك',style: TextStyle(color:Colors.white  ,fontSize: 40 ),),
        ),
        ListTile(
          title: const Text('اذكار',style: TextStyle(fontSize: 30)),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title:  const Text('تسبيح',style: TextStyle(fontSize: 30),),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('ادعية',style: TextStyle(fontSize: 30)),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),
    ),

        appBar: AppBar(
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
                Icons.backspace_rounded,
                color: Theme.of(context).accentColor,
              ),
            ),
          ],
          backgroundColor: Theme.of(context).splashColor,
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'اذكار',
            ),
          ),
          centerTitle: true,
        ),
        body: AzkarList[decider]);

  }
}
