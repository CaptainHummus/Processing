int n = 1000;
Ball[] balls = new Ball[n];
//Ball b;

float frameTime;   //time for draw method
int time;
float a = 200;

void setup()
{
  size(720,720);
  for(int i = 0; i < n; i++) {
    balls[i] = new Ball();
  }
  //b = new Ball();
  frameRate(60);
}

void draw()
{
  int currentTime = millis();
  frameTime = currentTime - time;
  frameTime = frameTime * 0.001f;

  background(0);
  for(int i = 0; i < balls.length; i++){
    Ball ball = balls[i];
    ball.move();
    ball.bounce();
    ball.display();
  }
//   for(Ball ball : balls){
//   ball.move();
//   ball.bounce();
//   ball.display();
// }

  time = currentTime;
}

class Ball
{
  PVector pos;
  PVector velDir;
  float r;
  float g;
  float b;

  Ball(){
    pos = new PVector(width/2, height/2);
    velDir = new PVector(random(-500,500),random(-500,500));
    r = random(255);
    g = random(255);
    b = random(255);
  }

  void move(){
    pos.y += (velDir.y * frameTime);
    pos.x += (velDir.x * frameTime);
    velDir.y += (a * frameTime);
  }

  void bounce(){
    if(pos.y > height || pos.y < 0){
      velDir.y = -(velDir.y  * 0.9);
      pos.y = height;
      velDir.x *= 0.9;
    }
    if(pos.x > width){
      pos.x = 0;
    }
    else if(pos.x < 0){
      pos.x = width;
    }
  }

  void display(){
    stroke(0);
    strokeWeight(2);
    fill(r, g, b);
    ellipse(pos.x, pos.y, 20,20);
  }

}
