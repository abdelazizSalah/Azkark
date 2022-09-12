import 'package:azkark/Models/Choices_data.dart';
import 'package:azkark/Screens/choice_item_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          elevation: 10,
          backgroundColor: Theme.of(context).splashColor,
          title: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Text(
              'أذكارك',
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: choices_dataAr
              .map((ch) => choiceItemScreen(ch.image, ch.word, ch.choice))
              .toList()),
    );
  }
}
