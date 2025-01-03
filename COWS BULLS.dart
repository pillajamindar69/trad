import 'dart:io';
import 'dart:math';

void main()
{
    Random random=Random();
    int a=random.nextInt(8999);
    a=1000+a;
    String str=a.toString();
    int attempt=0;
    print(str);
    while(true)
    {
        int cow=0;
        int bull=0;
        attempt+=1;
        print("Enter a 4 digit number :");
        String b=stdin.readLineSync() ?? "";
        if(str==b)
        {
            print("you found the integer $b in $attempt attempts");
            break;
        }
        else if(b=="exit")
        {
            print("exit");
            break;
        }
        else if(b.length!=str.length)
        {
            print("It is not a 4 digit number");
            continue;
        }
        List<bool> x = List.filled(4, false);
        for(int i=0;i<str.length;i++)
        {
            if(str[i]==b[i])
            {
                cow++;
                x[i]=true;
            }
        }
        for(int i=0;i<str.length;i++)
        {
            bool y=false;
            if(x[i]==false)
            {
                for(int j=0;j<str.length;j++)
                {
                    if(x[j]!=true && str[j]==b[i])
                    {
                        y=true;
                        x[j]=true;
                        break;
                        
                    }
                }
                if(y==true)
                {
                    bull++;
                }
            }
            
        }
        print("$cow cows and $bull bulls");
    }
}