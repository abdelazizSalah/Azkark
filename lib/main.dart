import 'package:azkark/Screens/HomePage.dart';
import 'package:azkark/controllers/scheduler.dart';
import 'package:flutter/material.dart';

void main() {
  /// this is the widget which makes the program waits at the beginning.
  WidgetsFlutterBinding.ensureInitialized();

  /// calling the activators
  fridayZekrActivate();
  DailyZekrActivate();
  runApp(myApp());
}

class myApp extends StatelessWidget {
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
              titleLarge: TextStyle(
                  letterSpacing: 1.2,
                  fontSize: 38,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                        blurRadius: 40,
                        color: Color.fromARGB(255, 220, 171, 27),
                        offset: Offset(20, 5))
                  ]),
              displayMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DS-DIGI'),
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
