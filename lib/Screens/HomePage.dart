import 'package:azkark/Models/Choices_data.dart';
import 'package:azkark/Screens/choice_item_screen.dart';
import 'package:azkark/Widgets/CustomAppBar.dart';
import 'package:azkark/Widgets/CustomDrawer.dart';
import 'package:azkark/controllers/app_settings_cache.dart';
import 'package:azkark/controllers/service.dart';
import 'package:azkark/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static bool darkMode = false;
  static int freq = 1;

  /// ar -> Arabic, en -> English, de -> German
  static String languageCode = 'ar';
  static bool get languageChoice => languageCode != 'ar';
  static set languageChoice(bool val) => languageCode = val ? 'en' : 'ar';
  static bool get isArabic => languageCode == 'ar';
  static bool get isEnglish => languageCode == 'en';
  static bool get isGerman => languageCode == 'de';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _saveSettings() {
    AppSettingsCache.save(
      darkMode: HomePage.darkMode,
      languageCode: HomePage.languageCode,
      frequency: HomePage.freq,
    );
  }

  void toggleMode() {
    setState(() {
      var temp = HomePage.darkMode;
      HomePage.darkMode = !temp;
    });
    _saveSettings();
  }

  void toggleLanguage(dynamic val) {
    setState(() {
      if (val is String) {
        HomePage.languageCode = val;
      } else {
        HomePage.languageChoice = val == true;
      }
    });
    _saveSettings();
  }

  @override
  Widget build(BuildContext context) {
    bool dkWidget = HomePage.darkMode;
    return MaterialApp(
        theme: AppTheme.build(darkMode: dkWidget),
        debugShowCheckedModeBanner: false,
        home: MainPage(
          LangSetter: toggleLanguage,
          darkMode: dkWidget,
          darkModeSetter: toggleMode,
        ));
  }
}

class MainPage extends StatelessWidget {
  final bool darkMode;
  final darkModeSetter;
  final LangSetter;
  //final bool languageChoice;
  MainPage(
      {required this.darkMode,
      required this.darkModeSetter,
      required this.LangSetter});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final themeOF = Theme.of(context);
    final Orientation devOrientation = mediaQuery.orientation;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openDialog(context, darkMode, darkModeSetter, LangSetter);
        },
        child: const Icon(Icons.favorite),
      ),
      appBar: CustomAppBar(),
      drawer: CustomDrawer(setMode: darkModeSetter, setLang: LangSetter),
      body: Directionality(
        textDirection:
            HomePage.isArabic ? TextDirection.rtl : TextDirection.ltr,
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  themeOF.canvasColor,
                  themeOF.colorScheme.surface,
                ],
              ),
            ),
            child: GridView(
                padding: const EdgeInsets.all(14),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: (mediaQuery.size.height *
                          (devOrientation == Orientation.portrait
                              ? 0.58
                              : 0.65)) /
                      mediaQuery.size.height,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                ),
                children: (HomePage.isArabic
                        ? choices_dataAr
                        : HomePage.isGerman
                            ? choices_dataDe
                            : choices_dataEn)
                    .map((ch) => choiceItemScreen(
                          image: ch.image,
                          word: ch.word,
                          choice: ch.choice,
                          toggleMode: darkModeSetter,
                          toggleLang: LangSetter,
                        ))
                    .toList())),
      ),
    );
  }
}
