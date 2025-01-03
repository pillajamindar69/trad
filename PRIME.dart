import 'dart:io';

void main()
{
    print("Enter a number :");
    int number=int.parse(stdin.readLineSync() ?? "");
    int count=0;
    for(int i=1;i<number;i++)
    {
        if(number%i==0)
        {
            count++;
        }
    }
    if(count==1)
    {
        print("It is prime");
    }
    else
    {
        print("It is not prime");
    }
}