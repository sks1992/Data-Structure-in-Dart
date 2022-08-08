// In Dart we can find the minimum and maximum valued element present in the
// given list in seven ways:
//
// Using for loop to find the largest and smallest element.
// Using sort function to find the largest and smallest element.
// Using forEach loop to find the largest and smallest element.
// Using only reduce method in dart to find the largest and smallest element.
// Using reduce method with dart:math library.
// Using fold method with dart to find the largest and smallest element.
// Using fold method with dart:math library.

void main() {
  List<int> arr = [2, 8, 4, 6, 9, 3, 7];
  maxAndMinInArrayUsingLoop(arr);
  maxAndMinInArrayUsingLSorting(arr);
  maxAndMinInArrayUsingForEach(arr);
}

void maxAndMinInArrayUsingLoop(List<int> arr) {
  // Declaring and assigning the
  // largestGeekValue and smallestGeekValue
  var largestValue = arr[0];
  var smallestValue = arr[0];

  for (int i = 0; i < arr.length; i++) {
    // Checking for largest value in the list
    if (arr[i] > largestValue) {
      largestValue = arr[i];
    }

    // Checking for smallest value in the list
    if (arr[i] < smallestValue) {
      smallestValue = arr[i];
    }
  }
  // Printing the values
  print("Smallest value in the list : $smallestValue");
  print("Largest value in the list : $largestValue");
}

void maxAndMinInArrayUsingLSorting(List<int> arr) {
  // Sorting the list
  arr.sort();

  // Printing the values
  print("Smallest value in the list : ${arr.first}");
  print("Largest value in the list : ${arr.last}");
}

void maxAndMinInArrayUsingForEach(List<int> arr) {
  // Declaring and assigning the
  // largestGeekValue and smallestGeekValue
  var largestValue = arr[0];
  var smallestValue = arr[0];

  // Using forEach loop to find
  // the largest and smallest
  // numbers in the list
  arr.forEach((number) => {
        if (number > largestValue) {largestValue = number},
        if (number < smallestValue) {smallestValue = number},
      });

  // Printing the values
  print("Smallest value in the list : $smallestValue");
  print("Largest value in the list : $largestValue");
}
