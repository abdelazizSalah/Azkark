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

  void toggleMode(bool english) {
    widget.langSetter(english);
  }

  var appBarVal = CustomAppBar();
  @override
  Widget build(BuildContext context) {
    var devOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: appBarVal,
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height -
            appBarVal.preferredSize.height -
            MediaQuery.of(context).padding.top -
            10,
        color: Theme.of(context).canvasColor,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: LayoutBuilder(builder: (context, constrains) {
            return Column(children: [
              Container(
                // height: MediaQuery.of(context).size.height * 0.15,
                height: (devOrientation == Orientation.landscape)
                    ? constrains.maxHeight * 0.25
                    : constrains.maxHeight * 0.2,
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
                          style: Theme.of(context).textTheme.displayLarge,
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
                // height: MediaQuery.of(context).size.height * 0.28,
                height: (devOrientation == Orientation.landscape)
                    ? constrains.maxHeight * 0.5
                    : constrains.maxHeight * 0.3,
                child: Card(
                    shadowColor: Theme.of(context).accentColor,
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          HomePage.languageChoice == false
                              ? "تكرار  التنبيهات"
                              : "Notification Frequency:",
                          style: Theme.of(context).textTheme.displayLarge,
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
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Theme.of(context).accentColor))),
                            ]),
                      ],
                    )),
              ),
              Container(
                height: (devOrientation == Orientation.landscape)
                    ? constrains.maxHeight * 0.25
                    : constrains.maxHeight * 0.2,
                child: Card(
                  shadowColor: Theme.of(context).accentColor,
                  elevation: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        HomePage.languageChoice == true ? "Lang" : 'اللغة',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            toggleMode(false);
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
                            toggleMode(true);
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
            ]);
          }),
        ),
      ),
    );
  }
}
