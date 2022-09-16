import 'package:azkark/Screens/HomePage.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      backgroundColor: Theme.of(context).splashColor,
      title: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Text(
          HomePage.languageChoice == false ? 'أذكارك' : "Azkark",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}
