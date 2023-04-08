
    PImage auto;
 
void setup (){
   
  size( 800, 400);
   background (255);
   auto = loadImage ("auto.jpg");
   image ( auto,0,0,400,400); 
}


void draw (){
  fill( 0,255,0);
  rect ( 400,0, 400, 160);
    fill( 222,218,190);
  rect ( 400,160, 400, 150);
    fill( 142,139,116);
  rect ( 400,310, 400, 90);
fill ( 255,0,0);
stroke (250,0,0);
rect (440,240, 320, 60);// piso del auto
triangle (440, 240, 470, 240 , 470, 150);//luneta
triangle ( 700, 210, 760, 240, 700, 240);//capot

fill( 255,0,0);
rect (470,148,170,2);
rect (470,150, 170, 60);//techo
rect ( 470,210, 230, 30);
fill ( 255, 255, 255);
stroke (0,0,0);
rect ( 600,150,40,60); 
rect (510,150, 70,60); // ventana
triangle (490,150,490,210,455,210) ;
triangle ( 640,210, 640, 150, 700,210);//parabriza
 fill ( 0,0,0);
 stroke (0 ,0,0);
  ellipse (500,300, 60,60); //rueda trasera 
    ellipse (700,300,60,60);// rueda delantero
    line ( 590, 150, 590,300);
    line ( 700, 210, 700,300);
    line ( 700, 210, 700,300);
    line ( 490, 210, 490,300);
  
}
