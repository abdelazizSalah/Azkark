import 'package:azkark/Screens/HomePage.dart';
import 'package:azkark/Widgets/AzkarContainer.dart';
import 'package:flutter/material.dart';

import '../CustomAppBar.dart';
import '../CustomDrawer.dart';

class tasabeeh extends StatelessWidget {
  List<Map> tasbeehAr = [
    {
      'zekr': '''سُبْحَانَ اللَّهِ''',
      'counter': 100,
      'initial': 100,
      'fadl': 'يكتب له ألف حسنة أو يحط عنه ألف خطيئة.',
      'title': '',
    },
    {
      'zekr': '''سُبْحَانَ اللَّهِ وَبِحَمْدِهِ''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ. لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ.',
      'title': '',
    },
    {
      'zekr': '''سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ''',
      'counter': 100,
      'initial': 100,
      'fadl': 'تَمْلَآَنِ مَا بَيْنَ السَّمَاوَاتِ وَالْأَرْضِ.',
      'title': '',
    },
    {
      'zekr': '''سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ''',
      'counter': 100,
      'initial': 100,
      'fadl': 'غرست له نخلة في الجنة (أى عدد).',
      'title': '',
    },
    {
      'zekr':
          '''سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ''',
      'counter': 100,
      'initial': 100,
      'fadl': 'ثقيلتان في الميزان حبيبتان إلى الرحمن (أى عدد).',
      'title': '',
    },
    {
      'zekr':
          '''لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ.''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'كانت له عدل عشر رقاب، وكتبت له مئة حسنة، ومحيت عنه مئة سيئة، وكانت له حرزا من الشيطان.',
      'title': '',
    },
    {
      'zekr': '''الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ''',
      'counter': 100,
      'initial': 100,
      'fadl': 'تملأ ميزان العبد بالحسنات.',
      'title': '',
    },
    {
      'zekr': '''لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ''',
      'counter': 100,
      'initial': 100,
      'fadl': 'كنز من كنوز الجنة (أى عدد).',
      'title': '',
    },
    {
      'zekr': '''الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد''',
      'counter': 100,
      'initial': 100,
      'fadl': 'من صلى على حين يصبح وحين يمسى ادركته شفاعتى يوم القيامة.',
      'title': '',
    },
    {
      'zekr': '''أستغفر الله''',
      'counter': 100,
      'initial': 100,
      'fadl': 'لفعل الرسول صلى الله عليه وسلم.',
      'title': '',
    },
    {
      'zekr':
          '''سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَرُ''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'أنهن أحب الكلام الى الله، ومكفرات للذنوب، وغرس الجنة، وجنة لقائلهن من النار، وأحب الى النبي عليه السلام مما طلعت عليه الشمس، والْبَاقِيَاتُ الْصَّالِحَات.',
      'title': '',
    },
    {
      'zekr': '''لَا إِلَهَ إِلَّا اللَّهُ''',
      'counter': 100,
      'initial': 100,
      'fadl': 'أفضل الذكر لا إله إلاّ الله.',
      'title': '',
    },
    {
      'zekr': '''الْلَّهُ أَكْبَرُ''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'من قال الله أكبر كتبت له عشرون حسنة وحطت عنه عشرون سيئة. الله أكبر من كل شيء.',
      'title': '',
    },
    {
      'zekr':
          '''سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ ، وَلا إِلَهَ إِلا اللَّهُ ، وَاللَّهُ أَكْبَرُ ، اللَّهُمَّ اغْفِرْ لِي ، اللَّهُمَّ ارْحَمْنِي ، اللَّهُمَّ ارْزُقْنِي.''',
      'counter': 100,
      'initial': 100,
      'fadl': 'خير الدنيا والآخرة',
      'title': '',
    },
    {
      'zekr':
          '''الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ.''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'قَالَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ ‏"‏لَقَدْ رَأَيْتُ اثْنَيْ عَشَرَ مَلَكًا يَبْتَدِرُونَهَا، أَيُّهُمْ يَرْفَعُهَا"‏.',
      'title': '',
    },
    {
      'zekr':
          '''اللَّهُ أَكْبَرُ كَبِيرًا ، وَالْحَمْدُ لِلَّهِ كَثِيرًا ، وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً.''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'قَالَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ "عَجِبْتُ لَهَا ، فُتِحَتْ لَهَا أَبْوَابُ السَّمَاءِ".',
      'title': '',
    },
    {
      'zekr':
          '''اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ , وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ , اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ.''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'في كل مره تحط عنه عشر خطايا ويرفع له عشر درجات ويصلي الله عليه عشرا وتعرض على الرسول صلى الله عليه وسلم (أى عدد).',
      'title': '',
    },
  ];
  List<Map> tasbeehEn = [
    {
      'zekr': '''Glory is to Allah''',
      'counter': 100,
      'initial': 100,
      'fadl': 'A thousand good deeds will be written for him or a thousand sins will be erased from him.',
      'title': '',
    },
    {
      'zekr': '''Glory is to Allah and praise is to Him''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'His sins are erased, even if they are like foam of the sea. No one will come on the Day of Resurrection with something better than what he brought except someone who said the same as he said or added to me.',
      'title': '',
    },
    {
      'zekr': '''Glorified is Allah and the praise is to Allah''',
      'counter': 100,
      'initial': 100,
      'fadl': 'fill between the heavens and the earth.',
      'title': '',
    },
    {
      'zekr':
          '''None has the right to be worshiped but Allah alone, He has no partner, His is the dominion and His is the praise and He is Able to do all things.''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'He had ten necks, and a hundred good deeds were written for him, and a hundred bad deeds were erased from him, and it was a protection for him from Satan..',
      'title': '',
    },
    {
      'zekr': '''Praise be to Allah, the Lord of the Universe''',
      'counter': 100,
      'initial': 100,
      'fadl': 'Fill the scale of the slave with good deeds.',
      'title': '',
    },
    {
      'zekr': '''There is no might and no power except by Allah''',
      'counter': 100,
      'initial': 100,
      'fadl': 'A treasure from the treasures of Paradise (any number).',
      'title': '',
    },
    {
      'zekr':
          '''O Allah, we ask for your peace and blessings upon our Prophet Muhammed''',
      'counter': 100,
      'initial': 100,
      'fadl': 'Whoever prays in the morning and in the evening, my intercession will reach him on the Day of Resurrection.',
      'title': '',
    },
    {
      'zekr': '''I seek forgiveness of Allah and repent to Him''',
      'counter': 100,
      'initial': 100,
      'fadl': 'For the Prophet, may God bless him and grant him peace, did.',
      'title': '',
    },
    {
      'zekr': '''There is none worthy of worship but Allah''',
      'counter': 100,
      'initial': 100,
      'fadl': 'The best remembrance is there is no god but God.',
      'title': '',
    },
    {
      'zekr': '''Allah is the Most Great''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'Whoever says God is great, twenty good deeds are written for him and twenty bad deeds are erased from him. God is greater than everything.',
      'title': '',
    },
    {
      'zekr':
          '''O Allah forgive me, and have mercy on me and guide me, and provide for me.''',
      'counter': 100,
      'initial': 100,
      'fadl': 'The best of this world and the hereafter',
      'title': '',
    },
    {
      'zekr':
          '''All praise is to Allah, praise in abundance, good and blessed.''',
      'counter': 100,
      'initial': 100,
      'fadl':'',
      'title': '',
    },
    {
      'zekr':
          '''Allah is the Greatest, Most Great, Praise is to Allah ,abundantly, Glory is to Allah at the break of day and at its end.''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'The Prophet, may God bless him and grant him peace, said, “I was astonished at her, so the gates of heaven were opened for her.”".',
      'title': '',
    },
    {
      'zekr':
          '''O Allah, bestow Your favor on Muhammad and on the family of Muhammad as You have bestowed Your favor on Ibrahim and on the family of Ibrahim, You are Praiseworthy, Most Glorious. 
O Allah, bless Muhammad and the family of Muhammad as You have blessed Ibrahim and the family of Ibrahim, You are Praiseworthy, Most Glorious.''',
      'counter': 100,
      'initial': 100,
      'fadl':
          'Every time, ten sins are removed from him and ten degrees are raised for him, and God blesses him ten times, and it is presented to the Messenger, may God bless him and grant him peace (any number).',
      'title': '',
    },
  ];

  final darkModeSetter;
  final langSetter; 
  tasabeeh({required this.darkModeSetter, required this.langSetter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(
        setLang: langSetter,
        setMode: darkModeSetter,
      ),
      body: AzkarContainer(
        azkary: HomePage.languageChoice == false ? tasbeehAr : tasbeehEn,
      ),
    );
  }
}
