import 'dart:math';

int generateRandomInt({
  required int max,
  int min = 0,
}) {
  final random = Random();
  return min + random.nextInt(max - min);
}
