import '../AzkarContainer.dart';
import 'package:flutter/material.dart';

import '../CustomAppBar.dart';
import '../CustomDrawer.dart';

/// TODO: lazm n7ot el titles bta3t el azkar w fadl el azkar
class AzkarMotafareka extends StatelessWidget {
  List<Map> azkary = [
    {
      'zekr': '''
الحمدُ للهِ الّذي كَساني هذا (الثّوب) وَرَزَقَنيه مِنْ غَـيـْرِ حَولٍ مِنّي وَلا قـوّة.
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء لبس الثوب'
    },
    {
      'zekr': '''
اللهم لك الحمد أنت كسوتنيه، أسألك من خيره
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء لبس الثوب الجديد'
    },
    {
      'zekr': '''
 لا إله إلا الله العظيم الحليم، لا إله إلا الله رب العرش العظيم، لا إله إلا الله رب السماوات، ورب الأرض ورب العرش الكريم
اللهم رحمتك أرجو فلا تكلني إلى نفسي طرفة عين وأصلح لي شأني كله ، لا إله إلا أنت
لا إله إلا أنت سبحانك إني كنت من الظالمين
الله الله رب لا أشرك به شيئا 
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء الكرب'
    },
    {
      'zekr': '''
 اللهم إني عبدك ابن عبدك ابن أمتك ناصيتي بيدك ماض في حكمك ، عدل في قضاؤك أسألك بكل اسم هو لك سميت به نفسك أو أنزلته في كتابك ، أو علمته أحداً من خلقك أو استأثرت به في علم الغيب عندك أن تجعل القرآن ربيع قلبي ، ونور صدري وجلاء حزني وذهاب همي.
اللهم إني أعوذ بك من الهم والحزن والعجز والكسل والبخل والجبن ، وضلع الدين وغلبة الرجال. 
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء الهم والحزن'
    },
    {
      'zekr': '''
اللهم اكفنى بحلالك عن حرامك وأغننى بفضلك عمن سواك
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء قضاء الدين'
    },
    {
      'zekr': '''
اللهم إنى أسألك خيرها، وخير ما فيها، وخير ما أرسلت به، وأعوذ بك من شرها، وشر ما فيها وشر ما أرسلت به.
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء الريح'
    },
    {
      'zekr': '''
سبحان الله الذي يسبح الرعد بحمده والملائكة من خيفته 
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء الرعـد'
    },
    {
      'zekr': '''
السلام عليكم أهل الديار من المؤمنين والمسلمين، وإنا إن شاء الله بكم لاحقون ويرحم الله المستقدمين منا والمستأخرين، أسأل الله لنا ولكم العافية.
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء زيارة القبور'
    },
    {
      'zekr': '''
اللهم صيباَ نافعاَ
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء نزول االمطر'
    },
    {
      'zekr': '''
بسم الله ، الحمد لله ، سبحان الذي سخر لنا هذا وماكنا له مقرنين وإنا إلى ربنا لمنقلبون، الحمد لله ، الحمد لله ، الحمد لله ، الله اكبر ، الله أكبر ، الله أكبر ، سبحانك اللهم إني ظلمت نفسي فاغفر لي ، فإنه لايغفر الذنوب إلا أنت.
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء ركوب الدابة أو ما يقوم مقامها'
    },
    {
      'zekr': '''
اللهم إنا نسألك في سفرنا هذا البر والتقوى، ومن العمل ماترضى ، اللهم هون علينا سفرنا هـذا واطوِ عنا بعده، اللهم أنت الصاحب في السفر، والخليفة في الأهل، اللهم إني أعوذ بك من وعثاء السفر وكآبة المنظر وسوء المنقلب في المال والأهل.
وإذا رجع قالهن وزاد فيهن ـ" آيبون ،تآئبون، عابدون ، لربنا حامدون
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء السفر'
    },
    {
      'zekr': '''
استودعكم الله الذي لا تضيع ودائعه
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء المسافر للمقيم'
    },
    {
      'zekr': '''
أستودع ُ الله دينك وأمانتك ، وخواتيم عملك زودك الله التقوى، وغفر ذنبك، ويسر لك الخير حيث ما كنت
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء المقيم للمسافر'
    },
    {
      'zekr': '''
أعوذ بكلمات الله التامات من شر ما خلق
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعـــاء النـــزول في مكــان'
    },
    {
      'zekr': '''
رب اغفر لي رب اغفر لي اللهم اغفر لي ، وارحمني واهدني واجبرني وعافني وارزقني وارفعن
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'الدعاء بين السجدتين'
    },
    {
      'zekr': '''
اللهم لاسهل إلا ماجعلته سهلا وأنت تجعل الحزن إذا شئت سهلا 
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعـاء من استصعب عليه أمر',
    },
    {
      'zekr': '''
اللهم إني أ عوذ بك أن أشرك بك وأنا أعلم ، وأستغفرك لما لا أعلم
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعـاء الخوف من الشــرك'
    },
    {
      'zekr': '''
رب اغفر لي وتب عليّ إنك أنت التواب الغفور
''',
      'counter': 100,
      'initial': 100,
      'fadl': '',
      'title': 'ما يقال في المجلس'
    },
    {
      'zekr': '''
سبحانك اللهم وبحمدك ، أشهد أن لا إله إلا أنت أستغفرك وأتوب إليك
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'كفارة المجلس'
    },
    {
      'zekr': '''
الحمد لله الذي عافاني مما ابتلا به وفضلني على كثير ممن خلق تفضيلاً 
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء من رأى مبتلى'
    },
    {
      'zekr': '''
أعوذ بالله من الشيطان الرجيـم
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعـاء الغـضـب'
    },
    {
      'zekr': '''
بارك الله لك ، وبارك عليك ، وجمع بينكما في خير
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'الدعاء للمتزوج'
    },
    {
      'zekr': '''
اللهم إني أسألك خيرها وخير ماجبلتها عليه وأعوذ بك من شرها وشر ماجبلتها عليه ، وإذا اشترى بعيراً فليأخذ بذروة سنامه وليقل مثل ذلك
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء المتزوج لنفسه'
    },
    {
      'zekr': '''
بسم الله ـ اللهم جنبنا الشيطان، وجنب الشيطان مارزقتنا
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'الدعاء قبل الجماع'
    },
    {
      'zekr': '''
إذا عطـس أحـدكم فليقل : الحمـد لله ، وليقل له أخـوه ، أو صاحبه : يرحمـك الله فـإذا قال له : يرحمك الله ، فليقل : يهديكم الله ويصلح بالكم.
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء العطاس'
    },
    {
      'zekr': '''
ذهب الضمـأ ، وأبتلت العروق ، وثبت الأجر إن شاء الله
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'الدعاء عند افطار الصائم'
    },
    {
      'zekr': '''
أفطر عندكم الصائمون ، وأكل طعامكم الأبرار ، وصلت عليكم الملائكة
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'الدعاء إذا أفطر عند أهل بيت'
    },
    {
      'zekr': '''
الله أكبر ، اللهم أهله علينا بالأمن ، والإيمان والسلامة ، والإسلام ، والتوفيق لما تحب وترضى ربنا وربك الله.
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء رؤية الهلال'
    },
    {
      'zekr': '''
إنا لله وإنا إليه راجعون اللهم أجرني في مصيبتي واخلف لي خيرا منها
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء من أصيب بمصيبة'
    },
    {
      'zekr': '''
لابأس طهور إن شاء الله مامن عبد مسلم يعود مريضاً لم يحضر أجله فيقول سبع مرات : أسأل الله العظيم رب العرش العظيم أن يشفيك إلا عوفي.
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'الدعاء للمريض في عيادته'
    },
    {
      'zekr': '''
اللهم اغفر لي وارحمني والحقني بالرفيق الأعل
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء المريض الذي يئس من حياته'
    },
    {
      'zekr': '''
أعيذكما بكلمات الله التامة من كل شيطان وهامة ، ومن كل عين لامة
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'ما يعوذ به الأولاد'
    },
    {
      'zekr': '''
حسـبنا الله ونعـم الـوكـيل
اللهم إنا نجعلك في نحورهم ونعوذ بك من شرورهم
اللهم أنت عضدي ، وأنت نصيري ، بك أجول وبك أصول وبك أقاتل
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء لقاء العدو وذي السلطان'
    },
    {
      'zekr': '''
قال جابر بن عبدالله رضي الله عنهما : كان رسول الله صلى الله عليه وسلم يعلمنا الاستخارة في الامور كلها كما يعلمنا السورة من القرآن ، يقول : ( إذا هم أحدكم بالأمر فليركع ركعتين من غير الفريضة ثم ليقل : اللهم إني أستخيرك بعلمك ، وأستقدرك بقدرتك وأسألك من فضلك العظيم فإنك تقدر ولا أقدر وتعلم ولاأعلم وأنت علام الغيوب ، اللهم إن كنت تعلم أن هذا الأمر ـ ويسمي حاجته ـ خيرا لي في ديني ومعاشي وعاقبة أمري ـ أو قال عاجله وآجله ـ فأقدره لي ويسره لي ثم بارك لي فيه ، وإن كنت تعلم أن هذا الأمر شر لي في ديني ومعاشي وعاقبة أمري ـ أو قال عاجله وآجله ـ فاصرفه عني واصرفني عنه واقدر لي الخير حيث كان ثم ارضني به).
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعـاء صـلاة الاستخـارة'
    },
    {
      'zekr': '''
سجد وجهي للذي خلقه ،وشق سمعه وبصره بحوله وقوته ( فتبارك الله احسن الخالقين ) 
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعـاء سجود التلاوة'
    },
    {
      'zekr': '''
 اللهم باعد بيني وبين خطاياي كما باعدت بين المشرق والغرب ، اللهم نقني من خطاياي كما ينقى الثوب الأبيض من الدنس، اللهم اغسلني من خطاياي بالثلج والماء والبرد.
سبحانك اللهم وبحمدك وتبارك اسمك وتعالى جدُّك ولاإله غيرك.
الله اكبر كبيرا ، الله اكبر كبيرا ، الله اكبر كبيرا ، والحمد لله كثيرا ، والحمد لله كثيرا ، والحمد لله كثيرا ، وسبحان الله بكرة وأصيلا(ثلاثـــا) ـ "اعوذ بالله من الشيطان من نفحه ونفثه وهمزه ". 
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعـــــاء الاستفــتــــاح'
    },
    {
      'zekr': '''
 لا إله إلا الله وحده لا شريك له، له الملك وله الحمد يحيي ويميت وهو حي لا يموت بيده الخير وهو على كل شيء قدير (كتب الله له ألف ألف حسنة ومحا عنه ألف ألف سيئة ورفع له ألف الف درجة وفي رواية: وبنى له بيتا في الجنة).
بسم الله، اللهم إني أسألك خير هذه السوق، وخير ما فيها، وأعوذ بك من شرها وشر ما فيها، اللهم إني أعوذ بك أن أصيب بها يميناً فاجرةً، أو صفقة خاسرة. 
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'دعاء دخول السوق'
    },
    {
      'zekr': '''
كما أخبرنا رسول الله صلى الله عليه وسلم ((ما من عبد يذنب ذنباً فيتوضأ فيحسن الطهور،ثم يقوم فيصلي ركعتين ، ثم يستغفر الله لذلك الذنب إلاَّ غُفر له )).
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'عنــــد فعــــل الذنب أو ارتكاب المعصية'
    },
    {
      'zekr': '''
 الدعاء عند صياح الديك : (( اللهم إني أسألك من فضلـــك )). ((إذا سمعتم صياح الديك[من الليل]،فاسألوا الله من فَضْلِهِ فإنها رأت ملكاً و إذا سمعتم نهيق الحمار،فتعوَّذوا بالله من الشيطان فإنها رأت شَيْطَاناً)). متفق عليه.
الدعاء عند صياح الديك و نهيق الحمار و نباح الكلاب: (( أعوذ بالله من الشيطان الرجيم )).
((إذا سمعتم نُباحَ الكلاب و نهيق الحمير بالليل فتعوذوا بالله فإنهن يَرَيْنَ ما لا ترون)). صحيح(صحيح سنن أبي داود3/961) 
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'الدعـــاء عنــــد سماع أصوات الحيوانات'
    },
    {
      'zekr': '''
 اللهم أنت ربي لا إله إلا أنت ، خلقتني وأنا عبدك وأنا على عهدك ووعدك ما استطعت أعوذ بك من شر ما صنعت، أبوئ لك بنعمتك على وأبوئ بذنبي ، فاغفر لي فانه لا يغفر الذنوب إلا أنت.
عن شداد بن أوس رضي الله عنه عن النبي صلى الله عليه وسلم قال ( سيد الاستغفار أن يقول العبد اللهم أنت ربي لا إله إلا أنت ، خلقتني وأنا عبدك وأنا على عهدك ووعدك ما استطعت أعوذ بك من شر ما صنعت، أبوئ لك بنعمتك على وأبوئ بذنبي ، فاغفر لي فانه لا يغفر الذنوب إلا أنت ) من قالها في النهار موقناً بها فمات من يومه قبل أن يمسي فهو من أهل الجنة ومن قالها من الليل وهو موقناً بها فمات قبل أن يصبح فهو من أهل الجنة . أخرجه البخاري. 
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'سيد الاستغفار'
    },
    {
      'zekr': '''
ضع يدك على الذي تألَّم من جسدك وقل: بسم الله ،ثلاثاً ،وقل سبع مرات: أعوذُ بالله وقُدْرَتِهِ من شَرِّ مَا أَجِدُ واُحَاذِرُ.
''',
      'counter': 1,
      'initial': 1,
      'fadl': '',
      'title': 'الدعـــاء إذا أحسست بوجع في جسدك'
    },
  ];
  final darkModeSetter;
  final langSetter;
  AzkarMotafareka({required this.langSetter, required this.darkModeSetter});

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
