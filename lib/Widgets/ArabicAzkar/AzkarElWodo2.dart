import '../AzkarContainer.dart';
import 'package:flutter/material.dart';

import '../CustomAppBar.dart';
import '../CustomDrawer.dart';

class AzkarElWodo2 extends StatelessWidget {
  List<Map> azkary = [
    {
      'zekr': '''
قبل الوضوء: "بِسْمِ ٱللّٰهِ"''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'الذكر قبل الوضوء'
    },
    {
      'zekr': '''
"سُبْحَانَكَ اللَّهُمَّ وبَحَمْدكَ أشْهدُ أنْ لا إلهَ إلا أنْتَ أَسْتَغْفِرُكَ وأتُوبُ إِلَيْكَ".''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'الذكر بعد الوضوء'
    },
    {
      'zekr': '''
"اللَّهُمَّ اجْعَلْني مِنَ التَّوَّابينَ واجْعَلْنِي من المُتَطَهِّرِينَ".
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': ''
    },
    {
      'zekr': '''
"أشْهَدُ أن لا إله إلا الله وحْدَهُ لا شريكَ لهُ ، وأشْهَدُ أنَّ محمداً عَبدُهُ ورسُولُه".
''',
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
      drawer: CustomDrawer(),
      body: AzkarContainer(
        azkary: azkary,
      ),
    );
  }
}
