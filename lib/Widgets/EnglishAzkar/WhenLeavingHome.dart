import 'package:flutter/material.dart';
import '../AzkarContainer.dart';

class WhenLeavingHome extends StatelessWidget {
  List<Map<String, Object>> azkary = [
    {
      'zekr':
          '  ‘In the name of Allah, I place my trust in Allah, and there is no might nor power except with Allah.’',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          ' ‘O Allah, I take refuge with You lest I should stray or be led astray, or slip or be tripped, or oppressor be oppressed, or behave foolishly or be treated foolishly.’ ',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': 'The Prophet  said : ‘Whoever awakes at night and then says:',
    },
  ];
  final darkMode;
  WhenLeavingHome({required this.darkMode});
  @override
  Widget build(BuildContext context) {
    return AzkarContainer(
      darkMood: darkMode,
      azkary: azkary,
    );
  }
}
