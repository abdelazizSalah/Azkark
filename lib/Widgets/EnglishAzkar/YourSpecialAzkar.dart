import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:azkark/Widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';
import '../AzkarContainer.dart';

class YourSpecialAzkar extends StatelessWidget {
  static List<Map<String, Object>> AzkarkEn = [

  ];

  final darkModeSetter;
  final langSetter;

  YourSpecialAzkar({this.darkModeSetter, this.langSetter});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: CustomAppBar(),
    drawer: CustomDrawer(
    setMode: darkModeSetter,
    setLang: langSetter,
    ),
    body: AzkarContainer(
    azkary: AzkarkEn,
    ));

  }
}
