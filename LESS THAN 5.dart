import 'dart:io';

void main()
{
    List<int> b=[];
    print("how many number u want");
    int vik=int.parse(stdin.readLineSync() ?? "");


    for(int i=0;i<vik;i++)
    {
        print("Enter the number $i :");
        int x=int.parse(stdin.readLineSync() ?? "");
        b.add(x);
    }


    print("Number less than 5");
    for(int i in b){
        if(i<5)
        {
            print(i);
        }
    }
        
}