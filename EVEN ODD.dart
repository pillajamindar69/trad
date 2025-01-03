import 'dart:io';

void main()
{
  print("Choose a number :");
  int number=int.parse(stdin.readLineSync() ?? "");
  if(number%2==0)
  {
    print("It is Even");
  }
  else
  {
    print("It s Odd");
  }
}