import 'dart:io';
void main()
{
    
    List<int> a=[1,2,3,4,5,6,7,8];
    List<int> b=[];
    
    for(int e in a)
    {
        if(e%2==0)
        {
            b.add(e);
        }
    }
    print(b);
}