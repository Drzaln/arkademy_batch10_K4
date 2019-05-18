import 'dart:math';

const ASCII_START = 33;
const ASCII_END = 126;
const NUMERIC_START = 48;
const NUMERIC_END = 57;
const LOWER_ALPHA_START = 97;
const LOWER_ALPHA_END = 122;
const UPPER_ALPHA_START = 65;
const UPPER_ALPHA_END = 90;

int randomBetween(int from, int to) {
  if (from > to) throw new Exception('$from cannot be > $to');
  var rand = new Random();
  return ((to - from) * rand.nextDouble()).toInt() + from;
}

String randomString(int length, {int from: ASCII_START, int to: ASCII_END}) {
  return new String.fromCharCodes(
      new List.generate(length, (index) => randomBetween(from, to)));
}

String randomNumeric(int length) =>
    randomString(length, from: NUMERIC_START, to: NUMERIC_END);

String randomAlpha(int length) {
  var lowerAlphaLength = randomBetween(0, length);
  var upperAlphaLength = length - lowerAlphaLength;
  var lowerAlpha = randomString(lowerAlphaLength,
      from: LOWER_ALPHA_START, to: LOWER_ALPHA_END);
  var upperAlpha = randomString(upperAlphaLength,
      from: UPPER_ALPHA_START, to: UPPER_ALPHA_END);
  return randomMerge(lowerAlpha, upperAlpha);
}

String randomAlphaNumeric(int length) {
  var alphaLength = randomBetween(0, length);
  var numericLength = length - alphaLength;
  var alpha = randomAlpha(alphaLength);
  var numeric = randomNumeric(numericLength);
  return randomMerge(alpha, numeric);
}

String randomMerge(String a, String b) {
  List<int> mergedCodeUnits = new List.from("$a$b".codeUnits);
  mergedCodeUnits.shuffle();
  return new String.fromCharCodes(mergedCodeUnits);
}

random(total){
  for (var i=0; i<total; i++){
    var stringBaru = randomAlphaNumeric(32);
    print(stringBaru);
  }
}

main(){
  random(5);
}