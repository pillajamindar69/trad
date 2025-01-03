void main() {
  int number = 28; 
  if (isPerfectNumber(number)) {
    print('$number is a Perfect Number');
  } else {
    print('$number is not a Perfect Number');
  }
}

bool isPerfectNumber(int num) {
  if (num <= 0) return false;

  int sum = 0;

  
  for (int i = 1; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      sum += i;
    }
  }

 
  return sum == num;
}