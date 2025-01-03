// sample code
import 'dart:io';
void main()
{
    print("what is your name: ");
    String name=stdin.readLineSync() ?? "";
    print("hi $name what is your age");
    int age=int.parse(stdin.readLineSync() ?? '');
    
    int c = 100 - age; // Calculate years until 100
    print("My name is $name and I have $c years until I turn 100.");
  
}
