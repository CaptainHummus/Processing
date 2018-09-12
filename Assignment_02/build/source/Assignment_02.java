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
  strokeWeight(5);
  stroke(0);

  for(int i = 1; i < width; i = i + 10) {
    line(i, width - i,width - i, i);
  }
}
  public void settings() {  size(480, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Assignment_02" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
