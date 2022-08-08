// In Dart we can find the second minimum and maximum valued element present in the
// given list in seven ways:
//
// Using for loop to find the largest and smallest element.
// Using sort function to find the largest and smallest element.
// Using forEach loop to find the largest and smallest element.

//only for positive integer
void main() {
  List<int> arr = [10, 8, 4, 6, 9, 3, 7];
  print(secondMax(arr));
}

int secondMax(List<int> arr) {
  int firstMax = 0;
  int secondMax = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > firstMax) {
      secondMax = firstMax;
      firstMax = arr[i];
    } else if (arr[i] > secondMax) {
      secondMax = arr[i];
    }
  }
  return secondMax;
}
