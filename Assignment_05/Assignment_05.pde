PVector Ball1;
PVector Ball1Dir;

float a = 600;

float frameTime;   //time for draw method
int time;
void setup()
{
  size(800,600);
  Ball1 = new PVector(width/2, height/2);
  Ball1Dir = new PVector(random(-1000,1000), random(-1000,1000));

  frameRate(60);
}

void draw()
{
  int currentTime = millis();
  frameTime = currentTime - time;
  frameTime = frameTime * 0.001f;

  background(0);
  Ball1.y += (Ball1Dir.y * frameTime);
  Ball1.x += (Ball1Dir.x * frameTime);
  ellipse(Ball1.x, Ball1.y, 10, 10);
  Ball1Dir.y = Ball1Dir.y + (a * frameTime);


  if(Ball1.y > height) {
   Ball1Dir.y = -(Ball1Dir.y * 0.8f);
   Ball1.y = height -1;
   Ball1Dir.x *= 0.8f;
  }
   else if(Ball1.y < 0) {
   Ball1Dir.y = -(Ball1Dir.y * 0.8f);
   Ball1.y = 1;
   Ball1Dir.x *= 0.8f;
  }
  if(Ball1.x > width){
   Ball1.x = 0;
  }
   else if(Ball1.x < 0){
  Ball1.x = width;
  }

  time = currentTime;
}

void generateBalls(int n, int originX, int originY)
{
  for (int i = 0; i < n; i++){

  }
}
