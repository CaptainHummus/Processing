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

public class Assignment_01 extends PApplet {

// Assignment 1, Write my name
int underlineX = 100;
int scanLineDistance = 10;
int frames = 0;
int scanLean = 200;

public void setup()
{
  
}


public void draw()
{
  background(136, 37, 42);
  stroke(3, 3, 3);
  strokeWeight(13.9f);
  fill(136, 37, 42);

  // First Letter "H"
  line(100, 300, 100, 110);
  line(165, 300, 165, 110);
  line(165, 240, 100, 221);
  // Second Letter "e"
  ellipse(231, 268, 70, 70);
  line(198, 268, 264, 268);
  // Third Letter "i"
  line(300, 300, 300, 234);
  ellipse(301, 203, 10, 10);
  //Fourth Letter "m"
  triangle(430, 300, 380, 300, 405, 241);
  triangle(334, 300, 384, 300, 356, 241);
  //Fifth Letter "e"
  ellipse(487, 268, 70, 70);
  line(520, 268, 454, 268);
  //Sixth Letter "r"
  arc(588, 270, 65, 65, 3.5f, 5.6f);
  line(555, 300, 555, 234);

  //Eraser and fills
  stroke(136, 37, 42);
  //For "m"
  triangle(430, 334, 380, 334, 405, 275);
  triangle(334, 334, 384, 334, 358, 275);
  //For the E's
  noFill();
  arc(248, 301, 35, 35, -1.5f, HALF_PI);
  line(252, 282, 276, 282);
  arc(504, 301, 35, 35, -1.5f, HALF_PI);
  line(514, 282, 530, 282);

  // Animated Underline
  stroke(3, 3, 3);
  underlineX = underlineX + 5;
  line(100, 330, underlineX, 330);
  if(underlineX > 612)
  {
      underlineX = underlineX - 5;
    //noLoop();
  }
  // Animated Scanlines - stolen from the class
  for (int i = 0; i < height + scanLean; i = i + scanLineDistance) {
    stroke(128, 128, 128, 100);
    strokeWeight(2);
    line(0, i + frames % scanLineDistance, width, i + frames % scanLineDistance - scanLean);
  }
  frames++;
}
  public void settings() {  size(768, 432); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Assignment_01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
