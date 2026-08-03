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
  String _pick(String ar, String en, String de) {
    if (HomePage.isArabic) return ar;
    if (HomePage.isGerman) return de;
    return en;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Directionality(
      textDirection: HomePage.isArabic ? TextDirection.rtl : TextDirection.ltr,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 48, 20, 26),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [theme.hintColor, theme.colorScheme.primary],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 76,
                    height: 76,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(22),
                      border:
                          Border.all(color: theme.highlightColor, width: 1.4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.18),
                          blurRadius: 14,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/Logos/sp.png',
                      fit: BoxFit.contain,
                      errorBuilder: (_, __, ___) => Icon(
                        Icons.menu_book_rounded,
                        color: theme.highlightColor,
                        size: 38,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(_pick('أذكارك', 'Azkark', 'Azkark'),
                      style: theme.textTheme.titleLarge),
                ],
              ),
            ),
            _DrawerItem(
              icon: Icons.menu_book_rounded,
              title: _pick('أذكار', 'Remembrance', 'Gedenken'),
              onTap: () => chooseOptioninHomePage(
                  context, 0, 1, widget.setMode, widget.setLang),
            ),
            _DrawerItem(
              icon: Icons.radio_button_checked_rounded,
              title: _pick('تسبيح', 'Praise', 'Lobpreis'),
              onTap: () => chooseOptioninHomePage(
                  context, 2, 1, widget.setMode, widget.setLang),
            ),
            _DrawerItem(
              icon: Icons.favorite_rounded,
              title: _pick('أدعية', 'Supplications', 'Bittgebete'),
              onTap: () => chooseOptioninHomePage(
                  context, 1, 1, widget.setMode, widget.setLang),
            ),
            const Divider(height: 22),
            _DrawerItem(
              icon: Icons.settings_rounded,
              title: _pick('الاعدادات', 'Settings', 'Einstellungen'),
              onTap: () => chooseOptioninHomePage(
                  context, 3, 1, widget.setMode, widget.setLang),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _DrawerItem(
      {required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      minLeadingWidth: 24,
      contentPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
      leading: Icon(icon, color: theme.highlightColor, size: 28),
      title: Text(title, style: theme.textTheme.labelMedium),
      trailing: Icon(Icons.chevron_right_rounded,
          color: theme.colorScheme.primary, size: 28),
      onTap: onTap,
    );
  }
}
