int frame = 0;
float mutliplier = 0.04;
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
    point(width/2 + sin(2*PI *i /numberOfPoints + frame *0.5 )* scale, height/2 + cos(2*PI*i /numberOfPoints + frame * 0.5 ) * scale );
  }

  for(int i = 0; i < numberOfPoints; i++) {
    stroke(i,i,i);
    point(i * 8, height/2 + sin((i*0.08) + frame * 0.01) * scale );
  }

  for(int i = 0; i < 1000; i++) {
    stroke(0,sin(2*PI /(frame*100))*255,0);
    point(i * 8, height/2 + cos((i) + frame * 0.01) * scale/2 );
  }

  frame++;
}
