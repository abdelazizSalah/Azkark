import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:azkark/Widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';
import '../AzkarContainer.dart';

class YourSpecialAzkar extends StatelessWidget {
  List<Map<String, Object>> AzkarkEn = [

  ];
  final darkMode;
  final darkModeSetter;

  YourSpecialAzkar({required this.darkMode,this.darkModeSetter});
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
          azkary: AzkarkEn,
        )
    );

  }
}
