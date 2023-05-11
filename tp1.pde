PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage inicio;
PImage reinicio;
PFont texto;
int semuevaeltexto=0;
int segundos = 0;
int pantalla = 1;
int velocidad=1;
int tiempoPantalla=10;
int posx = 0;
int posy = 380;
int largo = 200;
int alto = 100;
int activo=0;
   
void setup ()
{
  size(640,480);
  background (0);
  fill(200,0,0);
  texto= loadFont ( "ArialItalicMT-48.vlw");
  textFont( texto,40);
  imagen1 = loadImage ("tren1.jpg");
  imagen2 = loadImage ("tren2.jpg");
  imagen3 = loadImage ("tren3.jpg");
  inicio = loadImage ("inicio.jpg");
  reinicio = loadImage ("reinicio.jpg");
}

void draw ()
{
   if (pantalla==1)
     { 
       image (imagen1, 0,0,640,480);
       text( "Los trenes en Argentina surgieron \nen el siglo XIX y \nfueron populares hasta los 50", 0,semuevaeltexto-110 );
     }
     
   if (pantalla == 2) 
     {
       image (imagen2, 0,0,640,480);
       text( " cuando empezaron a perder popularidad.\nEn la década de 1990 \nse privatizaron las empresas ferroviarias. ", 500-semuevaeltexto, 200);
     }
     
   if (pantalla == 3) 
     {
       image (imagen3, 0,0,640,480);
       text( "Actualmente hay dos empresas \nprivadas que operan los trenes, \ny los servicios de larga \ndistancia son populares.",0,480-semuevaeltexto);
     }
     
   if (activo==1)
     {
       if (frameCount % velocidad == 0)
         {
            semuevaeltexto=semuevaeltexto+1;
         }
       
       if(frameCount % 60 == 0)
         {
            segundos = segundos + 1;
            if (segundos >tiempoPantalla)
               {
                 if (pantalla != 3) 
                   {
                      pantalla = pantalla + 1;
                      segundos=0;
                      semuevaeltexto=0;
                   }
               }
          }
       }
    
    if ((pantalla==1)&&(activo==0))
      {
        image (inicio, posx,posy,largo,alto);
      }
     
    if ((pantalla==3)&&(segundos>tiempoPantalla))
       {
         image (reinicio, posx,posy,largo,alto);
       }     
}

void mousePressed() 
{
    if ((mouseX>posx)&&(mouseX<posx+largo)&&(mouseY >posy) && (mouseY<posy+alto&& mousePressed))
      {
        if ((activo==1)&&(pantalla==3))
          {
            activo=0;
            pantalla=1;
            semuevaeltexto=0;
            segundos=0;
          }else 
          { 
            activo=1;
          }
       }
}
