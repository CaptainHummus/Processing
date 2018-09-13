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

public class Assignment_02 extends PApplet {

// Assignment 2 - Parabolic Curve
int lineCounter = 0;
int lineSpacing = 15;

public void setup()
{
  
}

public void draw()
{
  background(255, 150, 150);
  parabol();
}
public void parabol()
{
  strokeWeight(3);

  for(int i = 0; i < width; i = i + lineSpacing) {
    if (lineCounter % 3 == 0) {
      stroke(0);
    }
    else if (lineCounter % 3 != 0){
      stroke(50, 50, 50);
    }

    line(0, i + lineSpacing, width - i - lineSpacing, 0);
    lineCounter++;
  }
}
  public void settings() {  size(720, 720); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Assignment_02" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
