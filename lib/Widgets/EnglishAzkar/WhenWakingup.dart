import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:azkark/Widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';
import '../AzkarContainer.dart';

class WhenWakingup extends StatelessWidget {
  List<Map<String, Object>> azkary = [
    {
      'zekr':
          ' ‘All praise is for Allah who gave us life after having taken it from us and unto Him is there surrection.’  ',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘None has the right to be worshipped except Allah, alone without associate, to Him belongs sovereignty and praise and He is over all things wholly capable. How perfect Allah is, and allpraise is for Allah, and none has the right to be worshipped except Allah, Allah is the greatest and there is no power nor might except with Allah, The Most High, The Supreme. ',
      'counter': 10,
      'initial': 10,
      'title': '',
      'fadl': 'The Prophet  said : ‘Whoever awakes at night and then says:',
    },
    {
      'zekr': '‘O my Lord forgive me.',
      'counter': 3,
      'initial': 3,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘All praise is for Allah who restored to me my health and returned my soul and has allowed me to remember Him.’ ',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': '',
    },
  ];

  final darkMode;
  final darkModeSetter;

  WhenWakingup({required this.darkMode,this.darkModeSetter});
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
