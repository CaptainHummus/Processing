// Assignment 3 - Trigonometry and animated sinus curves
int frame = 0;
float mutliplier = 0.04;
int numberOfPoints = 100;
float pi = 3.14;

void setup()
{
size (720, 720);
strokeWeight(8);
}

void draw()
{
  background(120,255,120);
  stroke(0);

  for(int i = 0; i < numberOfPoints; i++) {
    point(100 + (i * 5), height/2 + sin((i*0.08) + frame * 0.01) * 100 );
  }
  stroke(255);

  for(int i = 0; i < numberOfPoints; i++) {
    point(100 + (i * 5), height/2 + cos((i*0.08) + frame * 0.01) * 100 );
  }

  // for(int i = 0; i < numberOfPoints; i++) {
  //   point(200 + sin( (i* 0.02) + frame * 0.02)  * 100,height/2  +sin((i* 0.02) + frame * 0.04 * i) * 100);
  //
  // }
  frame++;
}
