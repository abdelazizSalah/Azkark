import 'package:azkark/Screens/HomePage.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showHomeButton;

  const CustomAppBar({this.showHomeButton = false});

  String _backLabel() {
    if (HomePage.isArabic) return 'رجوع';
    if (HomePage.isGerman) return 'Zurück';
    return 'Back';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = HomePage.isArabic ? 'أذكارك' : 'Azkark';
    final canPop = Navigator.of(context).canPop();

    return AppBar(
      automaticallyImplyLeading: !showHomeButton,
      leading: showHomeButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_rounded),
              tooltip: _backLabel(),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => HomePage()),
                  (route) => false,
                );
              },
            )
          : canPop
              ? IconButton(
                  icon: const Icon(Icons.arrow_back_rounded),
                  tooltip: _backLabel(),
                  onPressed: () => Navigator.of(context).maybePop(),
                )
              : null,
      titleSpacing: 0,
      flexibleSpace: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [theme.hintColor, theme.colorScheme.primary],
          ),
        ),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 46,
            width: 46,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: theme.highlightColor, width: 1.4),
            ),
            child: Image.asset(
              'assets/Logos/sp.png',
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => Icon(
                Icons.menu_book_rounded,
                color: theme.highlightColor,
                size: 30,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(68.0);
}
