import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      backgroundColor: Theme.of(context).splashColor,
      title: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Text(
          'أذكارك',
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.0);
}
