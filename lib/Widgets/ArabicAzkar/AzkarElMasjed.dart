import 'package:flutter/material.dart';
import '../AzkarContainer.dart';
import '../CustomAppBar.dart';
import '../CustomDrawer.dart';

class AzkarElMasjed extends StatelessWidget {
  List<Map<String, Object>> azkary = [
    {
      'zekr':
          '  اللّهُـمَّ اجْعَـلْ في قَلْبـي نورا ، وَفي لِسـاني نورا، وَاجْعَـلْ في سَمْعي نورا، وَاجْعَـلْ في بَصَري نورا، وَاجْعَـلْ مِنْ خَلْفي نورا، وَمِنْ أَمامـي نورا، وَاجْعَـلْ مِنْ فَوْقـي نورا ، وَمِن تَحْتـي نورا .اللّهُـمَّ أَعْطِنـي نورا. ',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دُعَاءُ الذَّهَابِ إلَى المَسْجِدِ'
    },
    {
      'zekr':
          'أَعوذُ باللهِ العَظيـم وَبِوَجْهِـهِ الكَرِيـم وَسُلْطـانِه القَديـم مِنَ الشّيْـطانِ الرَّجـيم، بِسْمِ اللَّهِ، وَالصَّلاةُ وَالسَّلامُ عَلَى رَسُولِ الله، اللّهُـمَّ افْتَـحْ لي أَبْوابَ رَحْمَتـِك . ',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دُعَاءُ دُخُولِ المَسْجِدِ'
    },
    {
      'zekr':
          'بِسْـمِ اللَّـهِ وَالصَّلاةُ وَالسَّلامُ عَلَى رَسُولِ اللَّهِ، اللَّهُمَّ إنِّي أَسْأَلُكَ مِنْ فَضْلِكَ، اللَّهُمَّ اعْصِمْنِي مِنَ الشَّيْطَانِ الرَّجِيم.',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دُعَاءُ الخُرُوجِ مِنَ المَسْجِدِ'
    },
  ];
  final darkModeSetter;
  final langSetter;

  AzkarElMasjed({required this.langSetter, required this.darkModeSetter});

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
