import '../Screens/HomePage.dart';

import '../controllers/service.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  final setMode;
  final setLang;
  CustomDrawer({required this.setMode, required this.setLang});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    var devOrientation = MediaQuery.of(context).orientation;
    return Directionality(
      textDirection: HomePage.languageChoice == false
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: (devOrientation == Orientation.landscape)
                  ? MediaQuery.of(context).size.height * 0.35
                  : MediaQuery.of(context).size.height * 0.22,
              child: DrawerHeader(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 5),
                      color: Theme.of(context).splashColor)
                ], color: Theme.of(context).splashColor),
                child: Center(
                  child: Text(
                      HomePage.languageChoice == false ? 'أذكارك' : 'Azkark',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
              ),
            ),
            ListTile(
              title: Text(
                  HomePage.languageChoice == false ? 'أذكار' : "Remembrance",
                  style: Theme.of(context).textTheme.labelMedium),
              onTap: () {
                // Update the state of the app
                setState(() {
                  chooseOptioninHomePage(
                      context, 0, 1, widget.setMode, widget.setLang);
                });
                // Then close the drawer
              },
            ),
            ListTile(
              title: Text(HomePage.languageChoice == false ? 'تسبيح' : 'Praise',
                  style: Theme.of(context).textTheme.labelMedium),
              onTap: () {
                setState(() {
                  chooseOptioninHomePage(
                      context, 2, 1, widget.setMode, widget.setLang);
                });
              },
            ),
            ListTile(
              title: Text(
                  HomePage.languageChoice == false ? 'أدعية' : 'Supplications',
                  style: Theme.of(context).textTheme.labelMedium),
              onTap: () {
                setState(() {
                  chooseOptioninHomePage(
                      context, 1, 1, widget.setMode, widget.setLang);
                });
              },
            ),
            ListTile(
              title: Text(
                  HomePage.languageChoice == false ? 'الاعدادات' : 'Settings',
                  style: Theme.of(context).textTheme.labelMedium),
              onTap: () {
                setState(() {
                  chooseOptioninHomePage(
                      context, 3, 0, widget.setMode, widget.setLang);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
