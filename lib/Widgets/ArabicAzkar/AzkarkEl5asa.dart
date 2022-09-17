import 'package:flutter/material.dart';
import '../AzkarContainer.dart';
import '../CustomAppBar.dart';
import '../CustomDrawer.dart';

class AzkarkEl5asa extends StatelessWidget {
 static List<Map<String, Object>> AzkarkAr = [

  ];

 final darkModeSetter;
 final langSetter;

 AzkarkEl5asa({this.darkModeSetter, this.langSetter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        drawer: CustomDrawer(
          setMode: darkModeSetter,
          setLang: langSetter,
        ),
        body: AzkarContainer(
          azkary: AzkarkAr,
        ));
  }
}
