import 'dart:io';
import 'dart:math';

void main()
{
    Map<String,String> mp={};
        mp["rock"]="scissor";
        mp["scissor"]="paper";
        mp["paper"]="rock";
    
    List<String> l=["rock","scissor","paper"];
    int com=0,man=0;
    
    while(true)
    {

        print(l);
        print("Enter your choice: ");
        Random random=Random();
        String ran=l[random.nextInt(l.length)];
        String given=stdin.readLineSync() ?? "";
        if(given=='exit')
        {
            print("exit");
            break;
        }
        else if(!l.contains(given))
        {
            print("not contains");
            continue;
        }
        else if(mp[ran]==given)
        {
            com++;
            print("computer win");
            print("computer win $com times and man win $man times");
            

        }
        else if(mp[given]==ran)
        {
            man++;
            print("man win");
            print("computer win $com times and man win $man times");
        }
        print("\n");

    }
    
    
}