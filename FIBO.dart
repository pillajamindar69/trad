import 'dart:io';

List<int> fibb(int number)
{
    List<int> a=[0,1];
    for(int i=0;i<number-2;i++)
    {
        a.add(a[i]+a[i+1]);
    }
    return a;
}
void main()
{
    print("Enter a number: ");
    int number=int.parse(stdin.readLineSync() ?? "");
    List<int> b=fibb(number);
    print(b);
}