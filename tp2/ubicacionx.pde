int ubicacionx()
{ 
    if ((mouseX>400)&&(mouseX<600)&& mousePressed)
        {return 0;
        }else{
              if ((mouseX>600)&&(mouseX<800)&& mousePressed) 
              {return 1;
              }else{
                    return 3;
                   }
              }
}
int ubicaciony ()
{ 
    if ((mouseY>0)&&(mouseY<200)&& mousePressed)
        {return 0;
        }else{
              if ((mouseY>200)&&(mouseY<400)&& mousePressed) 
              {return 1;
              }else{
                    return 3;
                   }
              }
}
