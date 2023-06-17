void girar()
{
    for (int x=0; x< fin; x=x+7)
      {
         pushMatrix();
         translate(500+xx*200 ,100+yy*200);
         rotate(radians(frameCount));
         fill(random(255), random(255), random(255));
         rect (-100+x,-100+x,tam-2*x,tam-2*x);
         popMatrix();
      }
}
