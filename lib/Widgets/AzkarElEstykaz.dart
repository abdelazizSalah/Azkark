import 'package:flutter/material.dart';
import 'Zekr.dart';

class AzkarElEstykaz extends StatefulWidget {
  @override
  State<AzkarElEstykaz> createState() => _AzkarElEstykazState();
}

class _AzkarElEstykazState extends State<AzkarElEstykaz> {
  List<Map<String, Object>> azkary = [
    {
      'zekr':
      '  َالحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور. '
      ,'counter': 1,
      'initial': 1
    },
    {
      'zekr':
      'الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه . ',
      'counter': 1,
      'initial': 1
    },
    {
      'zekr':
      'لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي  .',
      'counter': 1,
      'initial': 1
    },


  ];

  @override
  Widget build(BuildContext context) {
    int couter = 0;
    return Container(
        color: Colors.green[300],
        child: Card(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Zekr(
                  counter: azkary[index]['counter'],
                  zekr: azkary[index]['zekr'],
                  decrementCounter: () {
                    setState(() {
                      if (azkary[index]['counter'] != 0)
                        azkary[index]['counter'] =
                            (azkary[index]['counter'] as int) - 1;
                    });
                  },
                  resetCounter: () {
                    setState(() {
                      azkary[index]['counter'] = azkary[index]['initial'] as int;
                    });
                  },
                );
              },
              itemCount: azkary.length,
            )));
  }
}

