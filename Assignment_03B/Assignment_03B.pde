int frame = 0;
float speedMultiplier1 = 0.5;
float speedMultiplier2 = 0.01;
float speedMultiplier3 = 0.49;
int numberOfPoints = 100;
int scale = 350;
float evenDivide =TWO_PI /numberOfPoints;


void setup()
{
  //background(0);
  size (720, 720);
  strokeWeight(8);
  //fullScreen();
}

void draw()
{
  background(0);
  circle();
  sineWave();
  cosWave();
  tube();
  frame++;
}

void circle()
{

  for(int i = 0; i < numberOfPoints; i++) {
    float x = (width/2 + sin(evenDivide * i + frame *speedMultiplier1 )* scale);
    float y = (height/2 + cos(evenDivide * i + frame * speedMultiplier1 ) * scale);

    colorGetter(speedMultiplier3, i);
    point(x, y);
  }
}

void sineWave()
{
  for(int i = 0; i < numberOfPoints; i++) {
    float x = (i * 8);
    float y = (height/2 + sin((i*0.08) + frame * speedMultiplier2) * scale);
    colorGetter(speedMultiplier2, i);
    point(x, y);
  }
}

void cosWave()
{
  for(int i = 0; i < numberOfPoints; i++) {
    float x = (i * 8);
    float y = (height/2 + cos((i*0.08) + frame * speedMultiplier2) * scale);
    colorGetter(-speedMultiplier2, i);
    point(x, y);
  }
}

void tube()
{
  for(int i = 0; i < 1000; i++) {

    float x = (i * 8);
    float y = (height/2 + sin((i) + frame * speedMultiplier2) * scale/2);
    colorGetter(speedMultiplier2, i);
    point(x, y);
  }
}

void colorGetter(float speedMultiplier, int i)
{
  float colorR = -(sin((evenDivide * i) + (frame *speedMultiplier) )*255);
  float colorG = (cos((evenDivide * i) + (frame *speedMultiplier) )*255);
  float colorB = (sin((evenDivide * i) + (frame *speedMultiplier) )*255);

  stroke(colorR, colorG, colorB);
}
