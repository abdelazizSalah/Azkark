import 'package:flutter/material.dart';
import '../AzkarContainer.dart';

class MorningAzkar extends StatelessWidget {
  List<Map<String, Object>> azkary = [
    {
      'zekr':
          ' ‘We have reached the morning and at this very time unto Allah belongs all sovereignty, and allpraise is for Allah. None has the right to be worshipped except Allah, alone, without partner, toHim belongs all sovereignty and praise and He is over all things omnipotent. My Lord, I ask You for the good of this night and the good of what follows it and I take refuge in You from the evil of this night and the evil of what follows it. My Lord, I take refuge in You from laziness and senility.My Lord, I take refuge in You from torment in the Fire and punishment in the grave.’ ',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘O Allah, by your leave we have reached the morning and by Your leave we have reached the evening, by Your leave we live and die and unto You is our resurrection.’',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': 'The Prophet  said : ‘Whoever awakes at night and then says:',
    },
    {
      'zekr':
          '‘O Allah, You are my Lord, none has the right to be worshipped except You, You created me and I am Your servant and I abide to Your covenant and promise as best I can, I take refuge in You from the evil of which I have committed. I acknowledge Your favour upon me and I acknowledge my sin, so forgive me, for verily none can forgive sin except You.’',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘O Allah, verily I have reached the morning and call on You, the bearers of Your throne, Your angles, and all of Your creation to witness that You are Allah, none has the right to be worshipped except You, alone, without partner and that Muhammad is Your Servant and Messenger.’',
      'counter': 4,
      'initial': 4,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          ' ‘O Allah, what blessing I or any of Your creation have risen upon, is from You alone, without partner, so for You is all praise and unto You all thanks.’',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl':
          'whoever says this in the morning has indeed offered his day ’ s thanks and whoever says this in the evening has indeed offered his night ’ s thanks.',
    },
    {
      'zekr':
          '‘O Allah, grant my body health, O Allah, grant my hearing health, O Allah, grant my sight health. None has the right to be worshipped except You.’',
      'counter': 3,
      'initial': 3,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          ' ‘O Allah, I take refuge with You from disbelief and poverty, and I take refuge with You from the punishment of the grave. None has the right to be worshipped except You.’',
      'counter': 3,
      'initial': 3,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          ' ‘‘Allah is Sufficient for me, none has the right to be worshipped except Him, upon Him I rely and He is Lord of the exalted throne.’',
      'counter': 7,
      'initial': 7,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘I take refuge in Allah’s perfect words from the evil He has created.’',
      'counter': 3,
      'initial': 3,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          ' ‘O Allah, I ask You for pardon and well-being in this life and the next. O Allah, I ask You for pardon and well-being in my religious and worldly affairs, and my family and my wealth. O Allah, veil my weaknesses and set at ease my dismay. O Allah, preserve me from the front and from behind and on my right and on my left and from above, and I take refuge with You lest I be swallowed up by the earth.’',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘O Allah, Knower of the unseen and the seen, Creator of the heavens and the Earth, Lord and Sovereign of all things, I bear witness that none has the right to be worshipped except You. I take refuge in You from the evil of my soul and from the evil and shirk of the devil, and from committing wrong against my soul or bringing such upon another Muslim.’',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘In the name of Allah with whose name nothing is harmed on earth nor in the heavens and He is The All-Seeing, The All-Knowing.’',
      'counter': 3,
      'initial': 3,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘I am pleased with Allah as a Lord, and Islam as a religion and Muhammad  as a Prophet.’',
      'counter': 3,
      'initial': 3,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘How perfect Allah is and I praise Him by the number of His creation and His pleasure, and by the weight of His throne, and the ink of His words.’',
      'counter': 3,
      'initial': 3,
      'title': '',
      'fadl': '',
    },
    {
      'zekr': '‘How perfect Allah is and I praise Him.’',
      'counter': 100,
      'initial': 100,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘O Ever Living, O Self-Subsisting and Supporter of all, by Your mercy I seek assistance, rectify for me all of my affairs and do not leave me to myself, even for the blink of an eye.’',
      'counter': 3,
      'initial': 3,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘None has the right to be worshipped except Allah, alone, without partner, to Him belongs all sovereignty and praise, and He is over all things omnipotent.’',
      'counter': 100,
      'initial': 100,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘We have reached the morning and at this very time all sovereignty belongs to Allah, Lord of the worlds. O Allah, I ask You for the good of this day, its triumphs and its victories, its light and its blessings and its guidance, and I take refuge in You from the evil of this day and the evil that follows it.’',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘None has the right to be worshipped except Allah, alone, without partner, to Him belongs all sovereignty and praise and He is over all things omnipotent.’',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': '',
    },
    {
      'zekr':
          '‘We rise upon the fitrah of Islam, and the word of pure faith, and upon the religion of our ProphetMuhammad  and the religion of our forefather Ibraheem, who was a Muslim and of true faith andwas not of those who associate others with Allah.’',
      'counter': 1,
      'initial': 1,
      'title': '',
      'fadl': 'fitrah: the religion of Islam, the way of Ibraheem',
    },
    {
      'zekr': '‘Read Surah Al-Ikhlas’',
      'counter': 3,
      'initial': 3,
      'title': '',
      'fadl': '',
    },
    {
      'zekr': '‘Read Surah Al-Falaq.’',
      'counter': 3,
      'initial': 3,
      'title': '',
      'fadl': '',
    },
    {
      'zekr': '‘Read Surah An-Nas.’',
      'counter': 3,
      'initial': 3,
      'title': '',
      'fadl': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AzkarContainer(
      azkary: azkary,
    );
  }
}
