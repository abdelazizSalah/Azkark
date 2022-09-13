import 'package:flutter/material.dart';

import '../CustomAppBar.dart';
import '../CustomDrawer.dart';
import '../AzkarContainer.dart';

class ad3ya extends StatelessWidget {
  final darkMode;
  final darkModeSetter;

  ad3ya({required this.darkMode, required this.darkModeSetter});

  List<Map<String, Object>> ad3yas = [
    /// TODO: add all ad3ya here in this blueprint
    {
      'zekr':
          '  َالحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور. ',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': ''
    },
    {
      'zekr':
          'الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه . ',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': ''
    },
    {
      'zekr':
          'لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي  .',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(
        darkMode: darkMode,
        darkModeSetter: darkModeSetter,
      ),
      body: AzkarContainer(
        darkMood: darkMode,
        azkary: ad3yas,
      ),
    );
  }
}
