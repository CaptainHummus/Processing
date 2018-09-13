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

public class Assignment_03 extends PApplet {

// Assignment 3 - Trigonometry and animated sinus curves
int frame = 0;
float mutliplier = 0.04f;
int numberOfPoints = 100;
float pi = 3.14f;

public void setup()
{

strokeWeight(8);
}

public void draw()
{
  background(120,255,120);
  stroke(0);

  for(int i = 0; i < numberOfPoints; i++) {
    point(100 + (i * 5), height/2 + sin((i) + frame * 0.01f) * 100 );
  }
  stroke(255);

  for(int i = 0; i < numberOfPoints; i++) {
    point(100 + (i * 5), height/2 + cos((i) + frame * 0.01f) * 100 );
  }

  // for(int i = 0; i < numberOfPoints; i++) {
  //   point(200 + sin( (i* 0.02) + frame * 0.02)  * 100,height/2  +sin((i* 0.02) + frame * 0.04 * i) * 100);
  //
  // }
  frame++;
}
  public void settings() { 
size (720, 720); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Assignment_03" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
