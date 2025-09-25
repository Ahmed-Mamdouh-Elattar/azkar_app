import 'dart:math';

final List<String> azkar = [
  "سبحان الله",
  "الحمد لله",
  "الله أكبر",
  "لا إله إلا الله",
  "لا حول ولا قوة إلا بالله",
];

String pickRandomZiker() {
  final random = Random();
  return azkar[random.nextInt(azkar.length)];
}
