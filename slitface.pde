//import processing.sound.*;
import java.io.File;

//FFT fft;
//SoundFile file; //AudioIn in

//int bande = 128;
//float[] spettro = new float [bande];

File dir = new File(sketchPath("/Users/sal/Desktop/studio/oiobox/slitfaccia/data/images"));
String[] filenames;

PImage img;
int x = 0;
int y = 4;
int velx = 1;//parametro che varia da 1 a 200 (da collegare al potenziometro)
int vely = 1; //parametro che varia da 1 a (da collegare al potenziometro) non presettato nel keypressed
int slideX = mouseX; //parametro che varia da 1 a 20. superati i 20 i framerate scendono (da collegare al potenziometro)
int slideY = 5; //parametro che varia da 1 a 20. superati i 20 i framerate scendono (da collegare al potenziometro)

void setup() 
{
  frameRate(60);
  size(800,600); 
  loadRandomImages();
  //fft = new FFT(this, bande);
  //file = new SoundFile(this, "sample.mp3");
  
  //file.play();
  //fft.input(file);
  
}

void draw()
{  
  println(frameRate);
   //fft.analyze(spettro);
    //image(img, 0, 0, width, height);
    horizon();
   //int m = img.width;
    //int n = img.height;
  
  map(mouseX, 0, width, 0, 100);
  
  int m = width;
  int n = height;
  int m_1 = (int)random(0,500);
  
for (int i = 0; i < slideY; i = i+1)

    //{ pushMatrix();
      //translate(spettro[i] * 10000, 0);
      
     { 
      copy(img, m_1, 0, m/2, n, x, 0, m_1, n);   
      x = x + velx *2;
      
      if (x > 780)
      { 
        x = 0;
      }    
     }
    filter(INVERT);
    //popMatrix();
} 


void horizon()
{
  int q1 = height;
  int g1 = width;
  int q_11 = (int)random(400, 752);
  int h_31 = (int)random(0,80);
  
for (int i = 0; i < slideX; i = i+1)

     copy(img, 0, 730, g1, 540, 0, y+q_11, g1, 540);   
      y = y+vely;
      
      if (y > 782)
      { 
        y = 0;
      }    
       
}

void preset1_velx()
{
  velx = 100;
}

//void preset1_vely()
//{
//  vely = 100;
//}

void preset1_slideY()
{
  slideY = 20;
}

void preset1_slideX()
{
  slideX = 10;
}
