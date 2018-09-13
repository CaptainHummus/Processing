import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Assignment_03B extends PApplet {

int frame = 0;
float mutliplier = 0.04f;
int numberOfPoints = 100;
int scale = 300;

public void setup()
{

strokeWeight(8);
}

public void draw()
{
  background(120,120,255);
  stroke(0);

  for(int i = 0; i < numberOfPoints; i++) {
    point(width/2 + sin(2*PI *i /numberOfPoints + frame *0.5f )* scale, height/2 + cos(2*PI*i /numberOfPoints + frame * 0.5f ) * scale );
  }

  for(int i = 0; i < numberOfPoints; i++) {
    stroke(i,i,i);
    point(i * 8, height/2 + sin((i*0.08f) + frame * 0.01f) * scale );
  }

  for(int i = 0; i < 1000; i++) {
    stroke(0,sin(2*PI /(frame*100))*255,0);
    point(i * 8, height/2 + cos((i) + frame * 0.01f) * scale/2 );
  }

  frame++;
}
  public void settings() { 
size (720, 720); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Assignment_03B" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
