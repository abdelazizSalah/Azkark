import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Screens/HomePage.dart';

class Settings extends StatefulWidget {
  final darkModeSetter;
  final langSetter;
  Settings({required this.darkModeSetter, required this.langSetter});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void toggleLng() {
    widget.darkModeSetter();
  }

  void toggleMode() {
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
        child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Card(
                    shadowColor: Theme.of(context).accentColor,
                    elevation: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          HomePage.languageChoice == true
                              ? "Night Mode"
                              : "الوضع الليلي",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Transform.scale(
                            scale: 1.4,
                            child: Switch.adaptive(
                              onChanged: ((_) {
                                toggleLng();
                              }),
                              value: HomePage.darkMode,
                            ))
                      ],
                    )),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.32,
                child: Card(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Theme.of(context).accentColor))),
                          ElevatedButton(
                              onPressed: () {
                                HomePage.freq = 5;
                              },
                              child: Text(
                                HomePage.languageChoice == false
                                    ? "قليلة"
                                    : "Low",
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Theme.of(context).accentColor))),
                        ]),
                  ],
                )),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
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
                            toggleMode();
                          },
                          child: Text(
                            HomePage.languageChoice == false
                                ? "العريبة"
                                : "Arabic",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Theme.of(context).accentColor))),
                      ElevatedButton(
                          onPressed: () {
                            toggleMode();
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
