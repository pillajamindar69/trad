void main()
{
    List<int> a=[1,2,3,4,5,6,8];
    List<int> b=[2,4,6,1,10];
    Set<int> c={};

    for(int i in a)
    {
        for(int j in b)
        {
            if(i==j)
            {
                c.add(i);
            }
        }
    }
    print(c.toList());
}