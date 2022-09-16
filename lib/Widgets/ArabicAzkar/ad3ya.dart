import 'package:azkark/Models/ad3ya_data.dart';
import 'package:azkark/Widgets/Zekr.dart';
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
  //List<String>duas=[];
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
      // drawer: CustomDrawer(
      //   darkMode: darkMode,
      //   darkModeSetter: darkModeSetter,
      // ),
      body:

          languageSelected==false?
          (Directionality(
          textDirection: TextDirection.rtl,
          child: Column(

            children: [
              Expanded(

                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: choice==0?ad3yaNabawya.length:choice==1?ad3yaYoum3rafa.length:choice==2?ad3ya5tmElQuran.length:choice==3?ad3yaGowm3ElDoa2.length:ForanxietyandsorrowAr.length,
                    itemBuilder: (context,position){
                     return Stack(

                        children: [

                          Padding(

                            child: Container(

                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              child: Text(

                                choice==0?ad3yaNabawya[position]:choice==1?ad3yaYoum3rafa[position]:choice==2?ad3ya5tmElQuran[position]:choice==3?ad3yaGowm3ElDoa2[position]:ForanxietyandsorrowAr[position],
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            padding: EdgeInsets.all(15),
                          )
                        ],
                      );

                }
                ),
              )
            ],
          ),
        )
          )
              :
          (
              Directionality(
                textDirection: TextDirection.ltr,
                child: Column(

                  children: [
                    Expanded(

                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: choice==0?BeforeenteringthebathroomEN.length:choice==1?AfterleavingthebathroomEn.length:choice==2?BeforeablutionEN.length:choice==3?UponcompletingtheablutionEn.length:choice==4?WhengoingtothemosqueEn.length:choice==5?UponenteringthemosqueEn.length:choice==6?UponleavingtheMosqueEn.length:choice==7?WhenprostratingduetorecitationoftheQuranEn.length:ForanxietyandsorrowEn.length,
                          itemBuilder: (context,position){
                            return Stack(

                              children: [

                                Padding(

                                  child: Container(

                                    padding: EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    child: Text(

                            choice==0?BeforeenteringthebathroomEN[position]:choice==1?AfterleavingthebathroomEn[position]:choice==2?BeforeablutionEN[position]:choice==3?UponcompletingtheablutionEn[position]:choice==4?WhengoingtothemosqueEn[position]:choice==5?UponenteringthemosqueEn[position]:choice==6?UponleavingtheMosqueEn[position]:choice==7?WhenprostratingduetorecitationoftheQuranEn[position]:ForanxietyandsorrowEn[position],
                                       style: TextStyle(fontSize: 30, color: Colors.white),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.4),
                                        borderRadius: BorderRadius.circular(15)),
                                  ),
                                  padding: EdgeInsets.all(15),
                                )
                              ],
                            );

                          }
                      ),
                    )
                  ],
                ),
              )


          )


    );
  }
}
