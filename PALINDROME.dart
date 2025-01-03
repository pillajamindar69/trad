import 'dart:io';

void main()
{
    print("Enter a string");
    String a=stdin.readLineSync() ?? "";

    String b="";

    for(int i=a.length-1 ;i>=0 ;i--)
    {
        b=b+a[i];
    }

    if(a==b)
    {
        print("It is palendrome");
    }
    else
    {
        print("It is not a palendrome");
    }

}