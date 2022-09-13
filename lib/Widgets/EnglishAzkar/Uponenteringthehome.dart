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
  Uponenteringthehome({required this.darkMode});
  @override
  Widget build(BuildContext context) {
    return AzkarContainer(
      darkMood: darkMode,
      azkary: azkary,
    );
  }
}
