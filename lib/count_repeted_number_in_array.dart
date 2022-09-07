void main() {
  List<int> arr = [1, 1, 2, 5, 9, 5, 7, 6, 3, 2, 5, 1, 2, 3, 1, 3];
  getCountOfRepeatedSameElement(arr);
}

void getCountOfRepeatedSameElement(List<int> arr) {
  Map<int, int> count = {};

  for (var element in arr) {
    count[element] = (count[element] ?? 0) + 1;
  }
  print(count.toString());
}
