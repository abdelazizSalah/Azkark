import '../controllers/service.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
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
                  child: Text(
                    'أذكارك',
                    style:
                        TextStyle(color: Colors.white, fontSize: 40, shadows: [
                      Shadow(
                          blurRadius: 40,
                          color: Theme.of(context).accentColor,
                          offset: Offset(20, 10))
                    ]),
                  ),
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
                  chooseOptioninHomePage(context, 0);
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
                  chooseOptioninHomePage(context, 2);
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
                  chooseOptioninHomePage(context, 1);
                });
              },
            ),
            ListTile(
              title: Text('الاعدادات',
                  style: Theme.of(context).textTheme.bodySmall),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // setState(() {
                //   decider = 11;
                // });
              },
            ),
          ],
        ),
      ),
    );
  }
}
