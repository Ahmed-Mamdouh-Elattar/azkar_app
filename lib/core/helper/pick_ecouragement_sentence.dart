import 'dart:math';

String pickEcouragementSentence() {
  const List<String> enCouragementSentences = [
    "أنهيت الذكر، والله لا ينـسى عبـدًا ذكـره",
    "كل تسبيحة كتبت في صحيفتك.. فلا تستهِن بما فعلت",
    "قلبك الآن أنقى.. وروحك أهدى",
    "ذكرت الله، فذكرك الله في ملأٍ خير من هذا",
    "لحظة ذكرٍ.. لكن أثرها في قلبك لا يُقاس",
    "هنيئًا لك.. زاد رصيدك عند من لا ينسى",
    "طمأنينة في القلب.. لأنك كنت مع الله",
  ];
  final random = Random();
  return enCouragementSentences[random.nextInt(enCouragementSentences.length)];
}
