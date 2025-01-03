import 'dart:io';
import 'dart:math';

void main()
{
    Random random=Random();
    int num=random.nextInt(100);
    num++;
    int attempt=0;
    int low=0,high=100;
    while(true)
    {
        attempt+=1;
        print("please enter between $low to $high");
        String a=stdin.readLineSync() ?? "";
        if(a=='exit')
        {
            print("I quit");
            break;
        }
        else if(int.parse(a)>high || int.parse(a)<low)
        {
            print("Entered number is not int between $low to $high");
            continue;
        }
        else if(int.parse(a)<num)
        {
            print("you are low");
            low=int.parse(a);
        }
        else if(int.parse(a)==num)
        {
            print("you won! in $attempt attempts");
            break;
        }
        else if(int.parse(a)>num)
        {
            print("You are high");
            high=int.parse(a);
        }
    }
}