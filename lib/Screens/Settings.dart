import 'package:azkark/Screens/privacy_and_policy.dart';
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

  final CustomAppBar appBarVal = CustomAppBar();
  @override
  Widget build(BuildContext context) {
    final List<Widget> NightModeWidgets = [
      Text(
        HomePage.languageChoice == true ? "Night Mode" : "الوضع الليلي",
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
    ];
    final List<Widget> LangWidgets = [
      Text(
        HomePage.languageChoice == true ? "Lang" : 'اللغة',
        style: Theme.of(context).textTheme.displayLarge,
      ),
      ElevatedButton(
          onPressed: () {
            toggleMode(false);
          },
          child: Text(
            HomePage.languageChoice == false ? "العريبة" : "Arabic",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Theme.of(context).splashColor))),
      ElevatedButton(
          onPressed: () {
            toggleMode(true);
          },
          child: Text(
            HomePage.languageChoice == true ? "English" : "الانجليزية",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Theme.of(context).splashColor))),
    ];

    final Orientation devOrientation = MediaQuery.of(context).orientation;
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
          /// Column Parent Container
          height: MediaQuery.of(context).size.height,
          child: LayoutBuilder(builder: (context, constrains) {
            return SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  /// Night Mode const Container
                  height: (devOrientation == Orientation.landscape)
                      ? constrains.maxHeight * 0.25
                      : constrains.maxHeight * 0.2,
                  child: Card(
                      shadowColor: Theme.of(context).splashColor,
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: HomePage.languageChoice == true
                            ? NightModeWidgets.toList()
                            : NightModeWidgets.reversed.toList(),
                      )),
                ),
                SizedBox(
                  /// Notifications const Container
                  height: (devOrientation == Orientation.landscape)
                      ? constrains.maxHeight * 0.5
                      : constrains.maxHeight * 0.3,
                  child: Card(
                      shadowColor: Theme.of(context).splashColor,
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
                                    final snackBar = SnackBar(
                                      content: Directionality(
                                          textDirection:
                                              HomePage.languageChoice == false
                                                  ? TextDirection.rtl
                                                  : TextDirection.ltr,
                                          child: Text(HomePage.languageChoice ==
                                                  false
                                              ? "اصبحت باستمرار"
                                              : "Notification frequency is high now")),
                                    );

                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Theme.of(context).splashColor)),
                                  child: Text(
                                    HomePage.languageChoice == false
                                        ? "باستمرار"
                                        : "High",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    HomePage.freq = 3;
                                    final snackBar = SnackBar(
                                      content: Directionality(
                                          textDirection:
                                              HomePage.languageChoice == false
                                                  ? TextDirection.rtl
                                                  : TextDirection.ltr,
                                          child: Text(HomePage.languageChoice ==
                                                  false
                                              ? "اصبحت متوسطة"
                                              : "Notification frequency is medium now")),
                                    );

                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Theme.of(context).splashColor)),
                                  child: Text(
                                    HomePage.languageChoice == false
                                        ? "متوسطة"
                                        : "Medium",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    HomePage.freq = 5;
                                    final snackBar = SnackBar(
                                      content: Directionality(
                                          textDirection:
                                              HomePage.languageChoice == false
                                                  ? TextDirection.rtl
                                                  : TextDirection.ltr,
                                          child: Text(HomePage.languageChoice ==
                                                  false
                                              ? "اصبحت قليلة"
                                              : "Notification frequency is low now")),
                                    );

                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Theme.of(context).splashColor)),
                                  child: Text(
                                    HomePage.languageChoice == false
                                        ? "قليلة"
                                        : "Low",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                  ),
                                ),
                              ]),
                        ],
                      )),
                ),
                SizedBox(
                  /// Lang const Container
                  height: (devOrientation == Orientation.landscape)
                      ? constrains.maxHeight * 0.25
                      : constrains.maxHeight * 0.2,
                  child: Card(
                    shadowColor: Theme.of(context).splashColor,
                    elevation: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: HomePage.languageChoice == true
                          ? LangWidgets.toList()
                          : LangWidgets.reversed.toList(),
                    ),
                  ),
                ),
                // Privacy const Container
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            // push the privcay screen
                            MaterialPageRoute(
                                builder: (context) => const PrivacyScreen()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).splashColor)),
                      child: const Text(
                        'Privacy & Policies',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                )
              ]),
            );
          }),
        ),
      ),
    );
  }
}
