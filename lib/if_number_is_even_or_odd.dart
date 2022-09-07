void main() {
  List<int> arr = [1, 2, 3, 45, 56, 78, 469, 54, 32];
  getEvenOrOddElement(arr);
}

void getEvenOrOddElement(List<int> arr) {
  List even = [];
  List odd = [];

  for (var element in arr) {
    if (element % 2 == 0) {
      even.add(element);
    } else {
      odd.add(element);
    }
  }
  print("Even number");
  for (var element in even) print("${element} ");
  print("Even odd");
  for (var element in odd) print("${element} ");
}
