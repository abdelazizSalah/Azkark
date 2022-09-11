import 'package:flutter/material.dart';
import 'Zekr.dart';

class AzkarElMasjed extends StatefulWidget {
  @override
  State<AzkarElMasjed> createState() => _AzkarElMasjedState();
}

class _AzkarElMasjedState extends State<AzkarElMasjed> {
  List<Map<String, Object>> azkary = [
    {
      'zekr':
      '  اللّهُـمَّ اجْعَـلْ في قَلْبـي نورا ، وَفي لِسـاني نورا، وَاجْعَـلْ في سَمْعي نورا، وَاجْعَـلْ في بَصَري نورا، وَاجْعَـلْ مِنْ خَلْفي نورا، وَمِنْ أَمامـي نورا، وَاجْعَـلْ مِنْ فَوْقـي نورا ، وَمِن تَحْتـي نورا .اللّهُـمَّ أَعْطِنـي نورا. '
      ,'counter': 1,
      'initial': 1
    },
    {
      'zekr':
      'أَعوذُ باللهِ العَظيـم وَبِوَجْهِـهِ الكَرِيـم وَسُلْطـانِه القَديـم مِنَ الشّيْـطانِ الرَّجـيم، بِسْمِ اللَّهِ، وَالصَّلاةُ وَالسَّلامُ عَلَى رَسُولِ الله، اللّهُـمَّ افْتَـحْ لي أَبْوابَ رَحْمَتـِك . ',
      'counter': 1,
      'initial': 1
    },
    {
      'zekr':
      'بِسْـمِ اللَّـهِ وَالصَّلاةُ وَالسَّلامُ عَلَى رَسُولِ اللَّهِ، اللَّهُمَّ إنِّي أَسْأَلُكَ مِنْ فَضْلِكَ، اللَّهُمَّ اعْصِمْنِي مِنَ الشَّيْطَانِ الرَّجِيم.',
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

