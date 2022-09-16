import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

import '../Screens/HomePage.dart';

class Settings extends StatefulWidget {
  final darkModeSetter;
  final langSetter;
  Settings({required this.darkModeSetter, required this.langSetter});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void toggelMode() {
    widget.darkModeSetter();
  }

  void toggleLang() {
    widget.langSetter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).canvasColor,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Card(
                shadowColor: Theme.of(context).accentColor,
                elevation: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      HomePage.darkMode == false &&
                              HomePage.languageChoice == true
                          ? "Night Mode"
                          : HomePage.darkMode == false &&
                                  HomePage.languageChoice == false
                              ? "الوضع الليلي"
                              : HomePage.darkMode == true &&
                                      HomePage.languageChoice == true
                                  ? "Light Mode"
                                  : "الوضع الصباحي",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Transform.scale(
                        scale: 1.4,
                        child: Switch.adaptive(
                          onChanged: ((_) {
                            toggelMode();
                          }),
                          value: HomePage.darkMode,
                        ))
                  ],
                )),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.18,
            child: Card(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    HomePage.languageChoice == false
                        ? "تكرار  التنبيهات"
                        : "Notification Frequency:",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          HomePage.freq = 1;
                        },
                        child: Text(
                          HomePage.languageChoice == false
                              ? "باستمرار"
                              : "High",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Theme.of(context).accentColor)),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            HomePage.freq = 3;
                          },
                          child: Text(
                            HomePage.languageChoice == false
                                ? "متوسطة"
                                : "Medium",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Theme.of(context).accentColor))),
                      ElevatedButton(
                          onPressed: () {
                            HomePage.freq = 5;
                          },
                          child: Text(
                            HomePage.languageChoice == false ? "قليلة" : "Low",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Theme.of(context).accentColor))),
                    ]),
              ],
            )),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.13,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    HomePage.languageChoice == true ? "Lang" : 'اللغة',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        toggleLang();
                      },
                      child: Text(
                        HomePage.languageChoice == false ? "العريبة" : "Arabic",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).accentColor))),
                  ElevatedButton(
                      onPressed: () {
                        toggleLang();
                      },
                      child: Text(
                        HomePage.languageChoice == true
                            ? "English"
                            : "الانجليزية",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).accentColor))),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
