import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

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
    setState(() {
      var temp = !dkMode;
      dkMode = temp;
      print("dkMode is $dkMode ");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            height: 100,
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
                            // setState(toggel);
                            // widget.darkMode = !widget.darkMode;
                          }),
                          value: dkMode,
                        ))
                  ],
                )),
          ),
          Container(
            height: 100,
            child: Card(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  Text(
                    "Freq",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "High",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Theme.of(context).accentColor)),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Medium",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).accentColor))),
                  ElevatedButton(
                      onPressed: () {},
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
            height: 100,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Lang",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Arabic",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).accentColor))),
                  ElevatedButton(
                      onPressed: () {},
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
