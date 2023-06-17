// https://youtu.be/l9E3a_9Yr8A

PImage cuadrados;
int cant=2;
int tam;
int fin;
int xx,yy;

void setup (){
   
  size( 800, 400);
   cuadrados = loadImage ("cuadrados.jpg");
   tam=(width/2)/cant;
   fin=width/8;
   xx=3;yy=3;
}

void draw() {
  image (cuadrados,0,0,400,400); 
  cuadrados();

}
 void mousePressed() 
 {  
  xx=ubicacionx();
  yy=ubicaciony();
 }
 
