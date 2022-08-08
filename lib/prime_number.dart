void main() {
  int num = 6;
  print("$num is prime :${primeNumber(num)}");
}

bool primeNumber(int num) {
  late bool isPrime;
  for (int i = 1; i < num / 2; i++) {
    if (num % i == 0) {
      isPrime = false;
    } else {
      isPrime = true;
    }
  }
  return isPrime;
}
