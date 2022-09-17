import 'package:flutter/material.dart';
import '../AzkarContainer.dart';
import '../CustomAppBar.dart';
import '../CustomDrawer.dart';

class AzkarkEl5asa extends StatelessWidget {
 static List<Map<String, Object>> AzkarkAr = [

  ];

  final darkMode;
  final darkModeSetter;

 AzkarkEl5asa({required this.darkMode, required this.darkModeSetter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(
        darkMode: darkMode,
        darkModeSetter: darkModeSetter,
      ),
      body: AzkarContainer(
        darkMood: darkMode,
        azkary: AzkarkAr,
      ),
    );
  }
}
