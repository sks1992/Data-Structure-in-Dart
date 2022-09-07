void main() {
  var str = "sksv";
  if (isPalindrome(str)) {
    print("$str is a palindrome");
  } else {
    print("$str is not a palindrome");
  }
}

bool isPalindrome(String input) {
  List char = input.split('');
  for (int i = 0; i <= char.length / 2; i++) {
    String temp = "";
    temp = char[i];
    char[i] = char[char.length - 1 - i];
    char[char.length - 1 - i] = temp;
  }
  return char.join() == input;

  //return String.fromCharCodes(input.codeUnits.reversed) == input;
}
