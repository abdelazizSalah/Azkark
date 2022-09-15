import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:azkark/Widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';
import '../AzkarContainer.dart';

class Uponenteringthehome extends StatelessWidget {
  List<Map<String, Object>> azkary = [
    {
      'zekr':
          '‘In the name of Allah we enter and in the name of Allah we leave, and upon our Lord we place our trust.’',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': '',
    },
  ];

  final darkMode;
  final darkModeSetter;

  Uponenteringthehome({required this.darkMode,this.darkModeSetter});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        drawer: CustomDrawer(
          darkMode: darkMode,
          darkModeSetter: darkModeSetter,
        ),
        body:  AzkarContainer(
          darkMood: darkMode,
          azkary: azkary,
        )
    );
  }
}
