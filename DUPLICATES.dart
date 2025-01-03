import 'dart:io';
List<int> set(List<int> a)
{
    Set<int> b=a.toSet();
    List<int> c=b.toList();
    return c;
}
void main()
{
    List<int> a=[1,2,1,3,4,5];
    List<int> b=set(a);
    print(b);
}