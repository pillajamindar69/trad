import 'dart:io';

void main()
{
    print("Enter no rows and colums :");
    int a=int.parse(stdin.readLineSync() ?? "");
    
    for(int i=0;i<a;i++)
    {
        for(int j=0;j<a;j++)
        {
            stdout.write(" ---");
            
        }
        print("");
        for(int j=0;j<a;j++)
        {
            stdout.write("|   ");
            
        }
        stdout.write("|");
        print("");
    }
    for(int j=0;j<a;j++)
        {
            stdout.write(" ---");
            
        }
}