class GermanTranslations {
  static String translate(String value) {
    final text = value.trim();
    if (text.isEmpty) return text;

    final n = _clean(text);

    String? matched;
    void when(List<String> patterns, String german) {
      if (matched != null) return;
      if (patterns.every((pattern) => n.contains(_clean(pattern)))) {
        matched = german;
      }
    }

    when([
      'reached the morning',
      'unto allah belongs all sovereignty'
    ], 'Wir haben den Morgen erreicht, und zu dieser Zeit gehoert Allah alle Herrschaft. Alles Lob gebuehrt Allah. Niemand hat das Recht, angebetet zu werden, ausser Allah allein, ohne Teilhaber. Ihm gehoert die Herrschaft, Ihm gebuehrt alles Lob, und Er hat Macht ueber alle Dinge. Mein Herr, ich bitte Dich um das Gute dieser Nacht und dessen, was ihr folgt, und ich suche Zuflucht bei Dir vor dem Uebel dieser Nacht und dessen, was ihr folgt. Mein Herr, ich suche Zuflucht bei Dir vor Traegheit und Altersschwaeche. Mein Herr, ich suche Zuflucht bei Dir vor der Strafe im Feuer und vor der Strafe im Grab.');
    when([
      'reached the evening',
      'unto allah belongs all sovereignty'
    ], 'Wir haben den Abend erreicht, und zu dieser Zeit gehoert Allah alle Herrschaft. Alles Lob gebuehrt Allah. Niemand hat das Recht, angebetet zu werden, ausser Allah allein, ohne Teilhaber. Ihm gehoert die Herrschaft, Ihm gebuehrt alles Lob, und Er hat Macht ueber alle Dinge. Mein Herr, ich bitte Dich um das Gute dieser Nacht und dessen, was ihr folgt, und ich suche Zuflucht bei Dir vor dem Uebel dieser Nacht und dessen, was ihr folgt. Mein Herr, ich suche Zuflucht bei Dir vor Traegheit und Altersschwaeche. Mein Herr, ich suche Zuflucht bei Dir vor der Strafe im Feuer und vor der Strafe im Grab.');
    when([
      'by your leave',
      'reached the morning',
      'resurrection'
    ], 'O Allah, mit Deiner Erlaubnis haben wir den Morgen erreicht, mit Deiner Erlaubnis erreichen wir den Abend, mit Deiner Erlaubnis leben und sterben wir, und zu Dir ist die Auferstehung.');
    when([
      'by your leave',
      'reached the evening',
      'return'
    ], 'O Allah, mit Deiner Erlaubnis haben wir den Abend erreicht, mit Deiner Erlaubnis erreichen wir den Morgen, mit Deiner Erlaubnis leben und sterben wir, und zu Dir ist die Rueckkehr.');
    when([
      'you are my lord',
      'created me',
      'forgive me'
    ], 'O Allah, Du bist mein Herr. Niemand hat das Recht, angebetet zu werden, ausser Dir. Du hast mich erschaffen, und ich bin Dein Diener. Ich halte an Deinem Bund und Deinem Versprechen fest, so gut ich kann. Ich suche Zuflucht bei Dir vor dem Uebel dessen, was ich getan habe. Ich erkenne Deine Gnade an mir an und bekenne meine Suende; so vergib mir, denn niemand vergibt Suenden ausser Dir.');
    when([
      'reached the morning',
      'bearers of your throne'
    ], 'O Allah, ich bin in den Morgen eingetreten und rufe Dich, die Traeger Deines Thrones, Deine Engel und Deine ganze Schoepfung zu Zeugen, dass Du Allah bist. Niemand hat das Recht, angebetet zu werden, ausser Dir allein, ohne Teilhaber, und Muhammad ist Dein Diener und Gesandter.');
    when([
      'reached the evening',
      'bearers of your throne'
    ], 'O Allah, ich bin in den Abend eingetreten und rufe Dich, die Traeger Deines Thrones, Deine Engel und Deine ganze Schoepfung zu Zeugen, dass Du Allah bist. Niemand hat das Recht, angebetet zu werden, ausser Dir allein, ohne Teilhaber, und Muhammad ist Dein Diener und Gesandter.');
    when([
      'what blessing',
      'your creation',
      'all thanks'
    ], 'O Allah, jede Gnade, mit der ich oder jemand aus Deiner Schoepfung aufgewacht ist, kommt von Dir allein, ohne Teilhaber. Dir gebuehrt alles Lob und Dir gebuehrt aller Dank.');
    when([
      'grant my body health',
      'grant my hearing health'
    ], 'O Allah, schenke meinem Koerper Gesundheit. O Allah, schenke meinem Gehoer Gesundheit. O Allah, schenke meinem Blick Gesundheit. Niemand hat das Recht, angebetet zu werden, ausser Dir.');
    when([
      'disbelief and poverty',
      'punishment of the grave'
    ], 'O Allah, ich suche Zuflucht bei Dir vor Unglauben und Armut, und ich suche Zuflucht bei Dir vor der Strafe im Grab. Niemand hat das Recht, angebetet zu werden, ausser Dir.');
    when([
      'allah is sufficient for me',
      'exalted throne'
    ], 'Allah genuegt mir. Niemand hat das Recht, angebetet zu werden, ausser Ihm. Auf Ihn vertraue ich, und Er ist der Herr des gewaltigen Thrones.');
    when([
      'perfect words',
      'evil he has created'
    ], 'Ich suche Zuflucht bei Allahs vollkommenen Worten vor dem Uebel dessen, was Er erschaffen hat.');
    when([
      'pardon and well being',
      'religious and worldly affairs'
    ], 'O Allah, ich bitte Dich um Vergebung und Wohlergehen in diesem Leben und im Jenseits. O Allah, ich bitte Dich um Vergebung und Wohlergehen in meiner Religion, meinem weltlichen Leben, meiner Familie und meinem Besitz. O Allah, bedecke meine Schwaechen und beruhige meine Furcht. O Allah, schuetze mich von vorne, von hinten, von rechts, von links und von oben, und ich suche Zuflucht bei Dir davor, von unten verschlungen zu werden.');
    when([
      'knower of the unseen',
      'evil of my soul'
    ], 'O Allah, Kenner des Verborgenen und Sichtbaren, Schoepfer der Himmel und der Erde, Herr und Besitzer aller Dinge: Ich bezeuge, dass niemand das Recht hat, angebetet zu werden, ausser Dir. Ich suche Zuflucht bei Dir vor dem Uebel meiner Seele, vor dem Uebel und Schirk des Teufels, und davor, mir selbst oder einem anderen Muslim Unrecht zuzufuegen.');
    when([
      'with whose name nothing is harmed',
      'all knowing'
    ], 'Im Namen Allahs, mit dessen Namen weder auf der Erde noch im Himmel etwas schadet; Er ist der Allhoerende, der Allwissende.');
    when([
      'pleased with allah',
      'islam as a religion'
    ], 'Ich bin zufrieden mit Allah als Herrn, mit dem Islam als Religion und mit Muhammad als Propheten.');
    when([
      'number of his creation',
      'weight of his throne'
    ], 'Wie vollkommen Allah ist, und ich lobe Ihn entsprechend der Anzahl Seiner Schoepfung, Seinem Wohlgefallen, dem Gewicht Seines Thrones und der Tinte Seiner Worte.');
    when(['how perfect allah is', 'praise him'],
        'Wie vollkommen Allah ist, und Ihm gebuehrt alles Lob.');
    when([
      'ever living',
      'blink of an eye'
    ], 'O Ewig Lebendiger, O Erhalter aller Dinge, bei Deiner Barmherzigkeit suche ich Hilfe. Ordne alle meine Angelegenheiten und ueberlasse mich nicht mir selbst, nicht einmal fuer einen Augenblick.');
    when([
      'none has the right',
      'to him belongs all sovereignty',
      'omnipotent'
    ], 'Niemand hat das Recht, angebetet zu werden, ausser Allah allein, ohne Teilhaber. Ihm gehoert die Herrschaft, Ihm gebuehrt alles Lob, und Er hat Macht ueber alle Dinge.');
    when([
      'sovereignty belongs to allah',
      'lord of the worlds',
      'good of this day'
    ], 'Wir haben den Morgen erreicht, und alle Herrschaft gehoert Allah, dem Herrn der Welten. O Allah, ich bitte Dich um das Gute dieses Tages, seinen Sieg, sein Licht, seinen Segen und seine Rechtleitung, und ich suche Zuflucht bei Dir vor dem Uebel dieses Tages und dem Uebel dessen, was ihm folgt.');
    when([
      'sovereignty belongs to allah',
      'lord of the worlds',
      'good of tonight'
    ], 'Wir haben den Abend erreicht, und alle Herrschaft gehoert Allah, dem Herrn der Welten. O Allah, ich bitte Dich um das Gute dieser Nacht, ihren Sieg, ihr Licht, ihren Segen und ihre Rechtleitung, und ich suche Zuflucht bei Dir vor dem Uebel dieser Nacht und dem Uebel dessen, was ihr folgt.');
    when([
      'fitrah of islam',
      'forefather ibraheem'
    ], 'Wir erwachen auf der natuerlichen Veranlagung des Islam, auf dem Wort des reinen Glaubens, auf der Religion unseres Propheten Muhammad und auf der Religion unseres Vorvaters Ibrahim, der Muslim und aufrichtigen Glaubens war und nicht zu denen gehoerte, die Allah Teilhaber zuschreiben.');

    when(['read surah al ikhlas'], 'Lies Sure Al-Ikhlas.');
    when(['read surah al falaq'], 'Lies Sure Al-Falaq.');
    when(['read surah an nas'], 'Lies Sure An-Nas.');

    when([
      'in the name of allah',
      'place my trust in allah'
    ], 'Im Namen Allahs. Ich setze mein Vertrauen auf Allah, und es gibt keine Macht und keine Kraft ausser durch Allah.');
    when([
      'lest i should stray',
      'treated foolishly'
    ], 'O Allah, ich suche Zuflucht bei Dir davor, irrezugehen oder irregefuehrt zu werden, auszurutschen oder zu Fall gebracht zu werden, Unrecht zu tun oder Unrecht zu erleiden, unwissend zu handeln oder unwissend behandelt zu werden.');
    when([
      'gave us life',
      'taken it from us'
    ], 'Alles Lob gebuehrt Allah, der uns Leben gab, nachdem Er es von uns genommen hatte, und zu Ihm ist die Auferstehung.');
    when([
      'the most high',
      'the supreme'
    ], 'Niemand hat das Recht, angebetet zu werden, ausser Allah allein, ohne Teilhaber. Ihm gehoert die Herrschaft, Ihm gebuehrt alles Lob, und Er hat Macht ueber alle Dinge. Wie vollkommen Allah ist, alles Lob gebuehrt Allah, niemand hat das Recht, angebetet zu werden, ausser Allah, Allah ist der Groesste, und es gibt keine Macht und keine Kraft ausser durch Allah, den Erhabenen, den Gewaltigen.');
    when(['my lord forgive me'], 'Mein Herr, vergib mir.');
    when([
      'restored to me my health',
      'returned my soul'
    ], 'Alles Lob gebuehrt Allah, der mir meine Gesundheit zurueckgab, meine Seele zurueckkehren liess und mir erlaubte, Seiner zu gedenken.');
    when([
      'we enter',
      'we leave',
      'place our trust'
    ], 'Im Namen Allahs treten wir ein, im Namen Allahs gehen wir hinaus, und auf unseren Herrn setzen wir unser Vertrauen.');

    when([
      'evil and the evil ones'
    ], 'O Allah, ich suche Zuflucht bei Dir vor dem Uebel und den Uebeltaetern.');
    when(['seek your forgiveness'], 'Ich bitte Dich um Vergebung.');
    when(['in the name of allah'], 'Im Namen Allahs.');
    when([
      'i bear witness',
      'muhammad is his slave'
    ], 'Ich bezeuge, dass niemand das Recht hat, angebetet zu werden, ausser Allah allein, ohne Teilhaber; und ich bezeuge, dass Muhammad Sein Diener und Gesandter ist.');
    when([
      'turn to you in repentance',
      'purified'
    ], 'O Allah, mache mich zu denen, die sich Dir in Reue zuwenden, und mache mich zu denen, die gereinigt sind.');
    when([
      'glory is to you',
      'turn to you in repentance'
    ], 'Preis sei Dir, o Allah, und Lob sei Dir. Ich bezeuge, dass niemand das Recht hat, angebetet zu werden, ausser Dir. Ich bitte Dich um Vergebung und wende mich Dir in Reue zu.');
    when([
      'place light in my heart',
      'make me a light'
    ], 'O Allah, lege Licht in mein Herz, Licht auf meine Zunge, Licht in mein Gehoer und Licht in meinen Blick. Lege Licht ueber mich, unter mich, zu meiner Rechten, zu meiner Linken, vor mich und hinter mich. Lege Licht in meine Seele, vermehre mein Licht, staerke mein Licht, mache mir Licht und mache mich zu Licht. O Allah, gewaehr mir Licht, und lege Licht in meine Nerven, in meinen Koerper, in mein Blut, in mein Haar und in meine Haut.');
    when([
      'almighty allah',
      'satan the outcast',
      'doors of your mercy'
    ], 'Ich suche Zuflucht bei Allah, dem Allmaechtigen, bei Seinem edlen Angesicht und Seiner ewigen Macht vor dem verfluchten Satan. Im Namen Allahs, und Segen und Frieden seien auf dem Gesandten Allahs. O Allah, oeffne mir die Tore Deiner Barmherzigkeit.');
    when([
      'ask for your favor',
      'protect me from satan'
    ], 'Im Namen Allahs, und Frieden und Segen seien auf dem Gesandten Allahs. O Allah, ich bitte Dich um Deine Gunst. O Allah, schuetze mich vor dem verfluchten Satan.');
    when([
      'prostrated my face',
      'best of creators'
    ], 'Mein Gesicht wirft sich nieder vor Dem, der es erschaffen und ihm durch Seine Macht Gehoer und Sicht gegeben hat. Preis sei Allah, dem besten Schoepfer.');
    when([
      'write it as a reward',
      'servant dawud'
    ], 'O Allah, schreibe sie mir als Belohnung an, nimm mir dadurch eine Last ab, mache sie bei Dir zu einem Schatz fuer mich und nimm sie von mir an, wie Du sie von Deinem Diener Dawud angenommen hast.');
    when([
      'i am your slave',
      'banisher of my sadness'
    ], 'O Allah, ich bin Dein Diener, Sohn Deines Dieners und Sohn Deiner Dienerin. Meine Stirnlocke ist in Deiner Hand. Dein Urteil ueber mich wird vollzogen, und Deine Bestimmung fuer mich ist gerecht. Ich bitte Dich bei jedem Namen, mit dem Du Dich selbst benannt hast, den Du in Deinem Buch offenbart hast, den Du einem Deiner Geschoepfe gelehrt hast oder den Du bei Dir im Wissen des Verborgenen behalten hast: Mache den Quran zum Fruehling meines Herzens, zum Licht meiner Brust, zum Vertreiber meiner Traurigkeit und zum Loeser meiner Sorge.');

    when(['glory is to allah and praise is to him'],
        'Preis sei Allah, und Ihm gebuehrt alles Lob.');
    when(['glory is to allah'], 'Preis sei Allah.');
    when(['glorified is allah and the praise is to allah'],
        'Gepriesen sei Allah, und alles Lob gebuehrt Allah.');
    when(['praise be to allah', 'lord of the universe'],
        'Alles Lob gebuehrt Allah, dem Herrn der Welten.');
    when(['no might and no power'],
        'Es gibt keine Macht und keine Kraft ausser durch Allah.');
    when(['peace and blessings upon our prophet'],
        'O Allah, sende Frieden und Segen auf unseren Propheten Muhammad.');
    when(['seek forgiveness of allah', 'repent to him'],
        'Ich bitte Allah um Vergebung und wende mich Ihm in Reue zu.');
    when(['none worthy of worship but allah'],
        'Niemand ist anbetungswuerdig ausser Allah.');
    when(['allah is the most great'], 'Allah ist der Groesste.');
    when([
      'forgive me',
      'mercy on me',
      'provide for me'
    ], 'O Allah, vergib mir, erbarme Dich meiner, leite mich recht und versorge mich.');
    when(['praise in abundance', 'good and blessed'],
        'Alles Lob gebuehrt Allah, reichliches, gutes und gesegnetes Lob.');
    when([
      'allah is the greatest',
      'at the break of day'
    ], 'Allah ist der Groesste, wahrhaft gross. Alles Lob gebuehrt Allah in Fuelle, und Preis sei Allah am Morgen und am Abend.');
    when([
      'bestow your favor on muhammad',
      'family of muhammad'
    ], 'O Allah, erweise Muhammad und der Familie Muhammads Deine Gnade, wie Du Ibrahim und der Familie Ibrahims Deine Gnade erwiesen hast; Du bist lobenswuerdig und ruhmreich. O Allah, segne Muhammad und die Familie Muhammads, wie Du Ibrahim und die Familie Ibrahims gesegnet hast; Du bist lobenswuerdig und ruhmreich.');

    when([
      'thousand good deeds'
    ], 'Tausend gute Taten werden fuer ihn niedergeschrieben oder tausend Suenden werden ihm getilgt.');
    when([
      'sins are erased',
      'foam of the sea'
    ], 'Seine Suenden werden getilgt, selbst wenn sie wie der Schaum des Meeres waeren. Am Tag der Auferstehung bringt niemand etwas Besseres, ausser jemand, der dasselbe sagte oder mehr hinzufuegte.');
    when(['between the heavens and the earth'],
        'Sie fuellen, was zwischen Himmel und Erde ist.');
    when([
      'hundred good deeds',
      'protection for him from satan'
    ], 'Es entspricht der Befreiung von zehn Menschen, hundert gute Taten werden ihm niedergeschrieben, hundert schlechte Taten werden ihm getilgt, und es ist Schutz fuer ihn vor dem Satan.');
    when(['scale of the slave'],
        'Es fuellt die Waage des Dieners mit guten Taten.');
    when(['treasure from the treasures of paradise'],
        'Ein Schatz von den Schaetzen des Paradieses.');
    when([
      'intercession will reach him'
    ], 'Wer dies morgens und abends spricht, den erreicht meine Fuersprache am Tag der Auferstehung.');
    when([
      'prophet',
      'did'
    ], 'Dies gehoert zur Praxis des Propheten, Allahs Segen und Frieden seien auf ihm.');
    when(['best remembrance'],
        'Das beste Gedenken ist: Es gibt keinen Gott ausser Allah.');
    when([
      'twenty good deeds'
    ], 'Wer "Allah ist der Groesste" sagt, dem werden zwanzig gute Taten geschrieben und zwanzig schlechte Taten getilgt.');
    when(['best of this world'], 'Das Beste dieser Welt und des Jenseits.');
    when([
      'gates of heaven'
    ], 'Der Prophet, Allahs Segen und Frieden seien auf ihm, sagte, dass sich dafuer die Tore des Himmels oeffneten.');
    when([
      'ten sins are removed'
    ], 'Jedes Mal werden zehn Suenden getilgt, zehn Stufen erhoeht und Allah sendet zehnmal Segen auf ihn.');
    when([
      'whoever awakes at night'
    ], 'Der Prophet, Allahs Segen und Frieden seien auf ihm, sagte: Wer nachts aufwacht und dann spricht:');
    when([
      'offered his day',
      'offered his night'
    ], 'Wer dies am Morgen sagt, hat den Dank seines Tages entrichtet; und wer es am Abend sagt, hat den Dank seiner Nacht entrichtet.');
    when(['fitrah', 'religion of islam'],
        'Fitrah: die Religion des Islam, der Weg Ibrahims.');

    return matched ?? text;
  }

  static String _clean(String text) {
    return text
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
  }
}
