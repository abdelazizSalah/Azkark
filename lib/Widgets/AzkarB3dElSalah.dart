import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'Zekr.dart';

class AzkarB3dElSalah extends StatefulWidget {
  @override
  State<AzkarB3dElSalah> createState() => _AzkarB3dElSalahState();
}

class _AzkarB3dElSalahState extends State<AzkarB3dElSalah> {
  List<Map<String, Object>> azkary = [
    {
      'zekr':
      '  أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرامأَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله.اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام'
      ,'counter': 1,
      'initial': 1
    },
    {
      'zekr':
      'لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد. ',
      'counter': 1,
      'initial': 1
    },
    {
      'zekr':
      'لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون.',
      'counter': 1,
      'initial': 1
    },
    {
      'zekr':
      'سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر. ',
      'counter': 33,
      'initial': 33
    },
    {
      'zekr':
      ' لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير. ',
      'counter': 1,
      'initial': 1
    },
    {
      'zekr':
      'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ .',
      'counter': 1,
      'initial': 1
    },
    {
      'zekr':
      'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير.',
      'counter': 10,
      'initial': 10
    },
    {
      'zekr':
      'اللّهُـمَّ إِنِّـي أَسْأَلُـكَ عِلْمـاً نافِعـاً وَرِزْقـاً طَيِّـباً ، وَعَمَـلاً مُتَقَـبَّلاً. .',
      'counter': 1,
      'initial': 1
    },
    {
      'zekr':
      'اللَّهُمَّ أَجِرْنِي مِنْ النَّار. ',
      'counter': 7,
      'initial': 7
    },
    {
      'zekr':
      'اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ.',
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

