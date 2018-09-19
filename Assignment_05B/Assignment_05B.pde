int time;
int n = 50;
int dY;
float frameTime;
float a = 300;
float force = 800;
float friction = 0.9;

Ball[] balls = new Ball[n];

void setup()
{
  size(720,720);
  for(int i = 0; i < n; i++) {
    balls[i] = new Ball();
  }
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
  //Another way to write the for loop
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
    velDir = new PVector(random(-force,force),random(-force,force));
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
    float dY = (velDir.y * frameTime);
    if(pos.y + dY > height || pos.y + dY < 0){
      velDir.y = -(velDir.y  * friction);
      velDir.x *= friction;
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
