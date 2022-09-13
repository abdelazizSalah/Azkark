import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:azkark/Widgets/SwitchButtonCard.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 106, 163, 108),
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
                          value: value,
                          onChanged: ((val) =>
                              setState(() => this.value = val))),
                    )
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
