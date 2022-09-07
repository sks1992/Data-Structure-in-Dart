void main() {
  String str = "SsandeepKumarSingh";
  repeatedElementCountInString(str);
}

void repeatedElementCountInString(String str) {
  var char = str.split('');
  Map<String, int> count = {};
  for (var element in char) {
    count[element] = (count[element] ?? 0) + 1;
  }
  print(count.toString());
}
