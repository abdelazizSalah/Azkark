import 'package:azkark/Models/ad3ya_data.dart';
import 'package:flutter/material.dart';

import '../CustomAppBar.dart';
import '../CustomDrawer.dart';
import '../AzkarContainer.dart';

class ad3ya extends StatelessWidget {
  final darkMode;
  final darkModeSetter;
  final num choice;
  final bool languageSelected;
  ad3ya({required this.darkMode, required this.darkModeSetter,required this.choice,required this.languageSelected});

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
      body:


      AzkarContainer(
        darkMood: darkMode,
        azkary:
          languageSelected==false?
              choice==0? ad3yaNabawya:choice==1?ad3yaYoum3rafa:choice==2?ad3ya5tmElQuran:ad3yaGowm3ElDoa2
              :
          ad3yas

      ),
    );
  }
}
