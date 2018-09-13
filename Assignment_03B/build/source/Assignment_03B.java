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
float speedMultiplier1 = 0.5f;
float speedMultiplier2 = 0.01f;
float speedMultiplier3 = 0.49f;
int numberOfPoints = 100;
int scale = 360;
float evenDivide =TWO_PI /numberOfPoints;


public void setup()
{
  background(0);
  
  strokeWeight(8);
  //fullScreen();
}

public void draw()
{
  background(0);
  circle();
  sineWave();
  cosWave();
  tube();
  frame++;
}

public void circle()
{

  for(int i = 0; i < numberOfPoints; i++) {
    float x = (width/2 + sin(evenDivide * i + frame *speedMultiplier1 )* scale);
    float y = (height/2 + cos(evenDivide * i + frame * speedMultiplier1 ) * scale);

    colorGetter(speedMultiplier3, i);
    point(x, y);
  }
}

public void sineWave()
{
  for(int i = 0; i < numberOfPoints; i++) {
    float x = (i * 8);
    float y = (height/2 + sin((i*0.08f) + frame * speedMultiplier2) * scale);
    colorGetter(speedMultiplier2, i);
    point(x, y);
  }
}

public void cosWave()
{
  for(int i = 0; i < numberOfPoints; i++) {
    float x = (i * 8);
    float y = (height/2 + cos((i*0.08f) + frame * speedMultiplier2) * scale);
    colorGetter(-speedMultiplier2, i);
    point(x, y);
  }
}

public void tube()
{
  for(int i = 0; i < 1000; i++) {

    float x = (i * 8);
    float y = (height/2 + sin((i) + frame * speedMultiplier2) * scale/2);
    colorGetter(speedMultiplier2, i);
    point(x, y);
  }
}

public void colorGetter(float speedMultiplier, int i)
{
  float colorR = -(sin((evenDivide * i) + (frame *speedMultiplier) )*255);
  float colorG = (cos((evenDivide * i) + (frame *speedMultiplier) )*255);
  float colorB = (sin((evenDivide * i) + (frame *speedMultiplier) )*255);

  stroke(colorR, colorG, colorB);
}
  public void settings() {  size (720, 720); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Assignment_03B" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
