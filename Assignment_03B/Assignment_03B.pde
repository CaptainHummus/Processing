int frame = 0;
float speedMultiplier1 = 0.5;
float speedMultiplier2 = 0.01;
int numberOfPoints = 100;
int scale = 300;


void setup()
{
size (720, 720);
strokeWeight(8);
}

void draw()
{
  background(120,120,255);
  stroke(0);

  for(int i = 0; i < numberOfPoints; i++) {
    stroke(0,0,sin((TWO_PI * i/numberOfPoints) + (frame *speedMultiplier1) )*255);
    float x = (width/2 + sin(TWO_PI *i /numberOfPoints + frame *0.5 )* scale);
    float y = (height/2 + cos(TWO_PI*i /numberOfPoints + frame * 0.5 ) * scale);
    point(x, y);
  }

  for(int i = 0; i < numberOfPoints; i++) {
    stroke(i,i,i);
    float x = (i * 8);
    float y = (height/2 + sin((i*0.08) + frame * 0.01) * scale);
    point(x, y);
  }

  for(int i = 0; i < 1000; i++) {
    stroke(0,sin(2*PI /(frame*100))*255,0);
    float x = (i * 8);
    float y = (height/2 + cos((i) + frame * 0.01) * scale/2);
    point(x, y);
  }

  frame++;
}
