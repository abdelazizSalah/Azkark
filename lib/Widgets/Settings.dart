import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

import '../Screens/HomePage.dart';

class Settings extends StatefulWidget {
  bool darkMode;
  final darkModeSetter;
  Settings({required this.darkMode, required this.darkModeSetter});

  @override
  State<Settings> createState() => _SettingsState(dkMode: darkMode);
}

class _SettingsState extends State<Settings> {
  bool dkMode;

  _SettingsState({required this.dkMode});

  void toggel() {
    widget.darkModeSetter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
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
                      "Dark Mode",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Transform.scale(
                        scale: 1.4,
                        child: Switch.adaptive(
                          onChanged: ((_) {
                            toggel();
                          }),
                          value: HomePage.darkMode,
                        ))
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
                    "Freq",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      HomePage.freq = 1;
                    },
                    child: Text(
                      "High",
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
                        "Medium",
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
                        "Low",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).accentColor))),
                ])),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.13,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Lang",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          HomePage.languageChoice=false;
                        });

                      },
                      child: Text(
                        "Arabic",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).accentColor))),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          HomePage.languageChoice=true;
                        });
                        print(HomePage.languageChoice);

                      },
                      child: Text(
                        "English",
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
