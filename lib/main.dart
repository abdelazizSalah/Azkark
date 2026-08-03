import 'package:flutter/material.dart';

import './Screens/HomePage.dart';
import 'controllers/app_settings_cache.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final settings = await AppSettingsCache.load();
  if (settings.darkMode != null) {
    HomePage.darkMode = settings.darkMode!;
  }
  if (settings.languageCode != null) {
    HomePage.languageCode = settings.languageCode!;
  }
  if (settings.frequency != null) {
    HomePage.freq = settings.frequency!;
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
