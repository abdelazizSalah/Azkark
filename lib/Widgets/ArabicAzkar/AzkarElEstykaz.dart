import '../AzkarContainer.dart';
import 'package:flutter/material.dart';

import '../CustomAppBar.dart';
import '../CustomDrawer.dart';

class AzkarElEstykaz extends StatelessWidget {
  List<Map<String, Object>> azkary = [
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

  final darkModeSetter;
  final langSetter;

  AzkarElEstykaz({required this.langSetter, required this.darkModeSetter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(
        setLang: langSetter,
        setMode: darkModeSetter,
      ),
      body: AzkarContainer(
        azkary: azkary,
      ),
    );
  }
}
