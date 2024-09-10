import 'package:azkark/Widgets/CustomAppBar.dart';

import './Screens/HomePage.dart';
// import './controllers/scheduler.dart';
import 'package:flutter/material.dart';

void main() {
  /// this is the widget which makes the program waits at the beginning.
  WidgetsFlutterBinding.ensureInitialized();

  /// calling the activators
  // fridayZekrActivate();
  // DailyZekrActivate();
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Na3yScreen();
  }
}

class Na3yScreen extends StatefulWidget {
  @override
  _Na3yScreenState createState() => _Na3yScreenState();
}

class _Na3yScreenState extends State<Na3yScreen> {
  @override
  Widget build(BuildContext context) {
    bool dkWidget = HomePage.darkMode;
    final themeOF = Theme.of(context);

    /// used to scale the fonts depending on the user settings
    final contentScaleFactor = MediaQuery.textScaleFactorOf(context);
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          canvasColor: dkWidget == true
              ? const Color.fromARGB(255, 127, 167, 200)
              : Colors.green[100],
          splashColor: dkWidget == false
              ? const Color.fromARGB(255, 17, 133, 66)
              : const Color.fromARGB(255, 52, 83, 132),
          dividerColor: dkWidget == false
              ? themeOF.highlightColor
              : themeOF.highlightColor,
          hoverColor: dkWidget == false
              ? const Color.fromARGB(255, 118, 164, 120)
              : const Color.fromARGB(255, 104, 151, 192),
          focusColor: dkWidget == false
              ? const Color.fromARGB(255, 251, 233, 173)
              : const Color.fromARGB(255, 237, 206, 113),
          primaryColor:
              dkWidget == false ? Colors.green[300] : Colors.blue[900],
          hintColor: dkWidget == false
              ? Colors.green[500]
              : const Color.fromARGB(255, 106, 142, 179),
          highlightColor: const Color.fromARGB(255, 220, 171, 27),
          cardColor: dkWidget == false
              ? Colors.white
              : const Color.fromARGB(255, 251, 217, 167),
          buttonTheme:
              ButtonThemeData(buttonColor: Color.fromARGB(255, 220, 171, 27)),
          fontFamily: 'Gulzar',
          textTheme: TextTheme(
              titleSmall: TextStyle(
                  fontSize: 24 * contentScaleFactor,
                  fontFamily: 'Amiri',
                  color: dkWidget == false ? Colors.amber : Colors.blue),
              titleLarge: TextStyle(
                  letterSpacing: 1.2,
                  fontSize: 38 * contentScaleFactor,
                  color: dkWidget == false ? Colors.white : Colors.amber,
                  shadows: [
                    const Shadow(
                        blurRadius: 40,
                        color: Color.fromARGB(255, 250, 187, 0),
                        offset: Offset(20, 5))
                  ]),
              labelMedium: TextStyle(
                  fontFamily: 'DS-DIGI',
                  color: dkWidget == true ? Colors.amber : Colors.white,
                  fontSize: HomePage.languageChoice
                      ? 23 * contentScaleFactor
                      : 27 * contentScaleFactor,
                  shadows: [
                    Shadow(
                        blurRadius: dkWidget == true ? 50 : 30,
                        offset: const Offset(5, 5),
                        color: Colors.black)
                  ]),
              displayMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 22 * contentScaleFactor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Amiri'),
              bodySmall: TextStyle(
                  fontSize: 28 * contentScaleFactor,
                  color: Colors.black,
                  fontFamily: 'DS-DIGI'),
              displayLarge: TextStyle(
                  fontFamily: 'Amiri',
                  fontSize: 25 * contentScaleFactor,
                  fontWeight: FontWeight.bold),
              bodyMedium: TextStyle(
                  fontSize: 30 * contentScaleFactor,
                  color: Colors.white,
                  fontFamily: 'Amiri',
                  shadows: [
                    const Shadow(
                        blurRadius: 40,
                        color: Colors.amberAccent,
                        offset: const Offset(20, 6))
                  ]))),
      home: const Na3yWidget(),
    );
  }
}

class Na3yWidget extends StatelessWidget {
  const Na3yWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final textScaleFactor = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: mediaQuery.size.height * 0.8,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'يا ايتها النفس المطمئنة ارجعي الى ربك راضية مرضية فادخلي في عبادي وادخلي جنتي',
                        style: TextStyle(
                          fontSize: textScaleFactor * 21,
                          fontFamily: 'Amiri',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Image.asset(
                        './assets/imgs/abdallah.jpg',
                        fit: BoxFit.fitHeight,
                      )),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'الرجاء الدعاء للحاج عبدالله و لزوجته بالرحمة و المغفرة و قراءة الفاتحه علي روحهما',
                      style: TextStyle(
                        fontSize: textScaleFactor * 21,
                        fontFamily: 'Amiri',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    // color the button as green
                    style: ElevatedButton.styleFrom(
                      // primary: Color.fromARGB(255, 0, 110, 6),
                      // onPrimary: Colors.white,
                      shadowColor: const Color.fromARGB(255, 2, 202, 105),
                      elevation: 5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),

                    child: Text(
                      'انتقل الي الاذكار',
                      style: TextStyle(
                        fontSize: 22 * textScaleFactor,
                        fontFamily: 'Amiri',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
