import 'package:azkark/Widgets/AzkarContainer.dart';
import 'package:flutter/material.dart';

class AzkarElWodo2 extends StatelessWidget {
  List<Map> azkary = [
    {
      'zekr': '''
قبل الوضوء: "بِسْمِ ٱللّٰهِ"''',
      'counter': 1,
      'initial': 1
    },
    {
      'zekr': '''
"سُبْحَانَكَ اللَّهُمَّ وبَحَمْدكَ أشْهدُ أنْ لا إلهَ إلا أنْتَ أَسْتَغْفِرُكَ وأتُوبُ إِلَيْكَ".''',
      'counter': 1,
      'initial': 1
    },
    {
      'zekr': '''
"اللَّهُمَّ اجْعَلْني مِنَ التَّوَّابينَ واجْعَلْنِي من المُتَطَهِّرِينَ".
''',
      'counter': 1,
      'initial': 1
    },
    {
      'zekr': '''
"أشْهَدُ أن لا إله إلا الله وحْدَهُ لا شريكَ لهُ ، وأشْهَدُ أنَّ محمداً عَبدُهُ ورسُولُه".
''',
      'counter': 1,
      'initial': 1
    },
  ];
  @override
  Widget build(BuildContext context) {
    return AzkarContainer(azkary: azkary);
  }
}
