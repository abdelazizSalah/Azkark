import 'package:flutter/material.dart';
import '../utilityWidgets/AzkarContainer.dart';

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

  @override
  Widget build(BuildContext context) {
    return AzkarContainer(
      azkary: azkary,
    );
  }
}
