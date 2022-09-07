void main() {
  String name = "Sandeep";
  String fullName = "Sandeep Kumar";
  getReverseString(name);
  getReverseString1(name);
  getReverseString2(fullName);
  reverseStringUsingRunes(fullName);
  reverseStringUsingCodeUnits(fullName);
}

void getReverseString(String str) {
  var char = str.split('');
  print(char.reversed.join());
}

void getReverseString1(String str) {
  List char = str.split('');
  for (int i = 0; i <= char.length / 2; i++) {
    String temp = "";
    temp = char[i];
    char[i] = char[char.length - 1 - i];
    char[char.length - 1 - i] = temp;
  }
  print(char.join());
}

void getReverseString2(String str) {
  var char = str.split(' ');
  print(char.reversed.join());
}

void reverseStringUsingRunes(String input) {
  var chars = input.runes.toList();

  print(String.fromCharCodes(chars.reversed));
}

void reverseStringUsingCodeUnits(String input) {
  print(String.fromCharCodes(input.codeUnits.reversed));
}