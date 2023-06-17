void cuadrados()
{
for (int i=0;i<2;i++)
  {
    for (int j=0;j<2;j++)
      {
         if ((i==xx)&&(j==yy))
            {
             girar();
            }else
            {
              for (int x=0; x< fin; x=x+7)
                {
                  if (x % 2 == 0)
                    {
                      fill(255, 0, 0);
                      rect (400+200*i+x,0+200*j+x,tam-2*x,tam-2*x);
                     }else
                    {
                      fill(255, 204, 0);
                      rect (400+200*i+x,0+200*j+x,tam-2*x,tam-2*x);
                    }
                  }
             }
        }
  }
}
