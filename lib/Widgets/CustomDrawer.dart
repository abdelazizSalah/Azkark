import 'package:azkark/Screens/HomePage.dart';

import '../controllers/service.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  final bool darkMode;
  final darkModeSetter;
  CustomDrawer({required this.darkMode, required this.darkModeSetter});
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 170,
              child: DrawerHeader(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 5),
                      color: Theme.of(context).splashColor)
                ], color: Theme.of(context).splashColor),
                child: Center(
                  child: Text('أذكارك',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'أذكار',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              onTap: () {
                // Update the state of the app
                setState(() {
                  chooseOptioninHomePage(
                      context, 0, 1, HomePage.darkMode, widget.darkModeSetter);
                });
                // Then close the drawer
              },
            ),
            ListTile(
              title: Text(
                'تسبيح',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                setState(() {
                  chooseOptioninHomePage(
                      context, 2, 1, HomePage.darkMode, widget.darkModeSetter);
                });
              },
            ),
            ListTile(
              title:
                  Text('أدعية', style: Theme.of(context).textTheme.bodySmall),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                setState(() {
                  chooseOptioninHomePage(
                      context, 1, 1, HomePage.darkMode, widget.darkModeSetter);
                });
              },
            ),
            ListTile(
              title: Text('الاعدادات',
                  style: Theme.of(context).textTheme.bodySmall),
              onTap: () {
                setState(() {
                  chooseOptioninHomePage(
                      context, 3, 0, HomePage.darkMode, widget.darkModeSetter);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
