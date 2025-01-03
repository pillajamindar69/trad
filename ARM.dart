import 'dart:math';

void main() {
  int number = 153; 
  if (isArmstrong(number)) {
    print('$number is an Armstrong Number');
  } else {
    print('$number is not an Armstrong Number');
  }
}

bool isArmstrong(int num) {
  int originalNumber = num;
  int sum = 0;
  int digits = num.toString().length;

  while (num > 0) {
    int digit = num % 10; 
    sum += pow(digit, digits).toInt(); 
    num ~/= 10; 
  }

  
  return sum == originalNumber;
}