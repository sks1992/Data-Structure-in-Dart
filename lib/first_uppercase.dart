void main() {
  String str = "KuMar";

  print("the first Uppercase in Str is: ${firstUppercase(str)}");
  print("the Second Uppercase in Str is: ${secondUppercase(str)}");
}

String firstUppercase(String str) {
  for (int i = 0; i < str.length; i++) {
    if (str[i].toUpperCase() == str[i]) {
      return str[i];
    }
  }
  return 'There is No upper case';
}

String secondUppercase(String str) {
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i].toUpperCase() == str[i]) {
      count = count + 1;
      if (count == 2) {
        return str[i];
      }
    }
  }
  return 'There is No upper case';
}
