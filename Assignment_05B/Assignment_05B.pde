int time;
int n = 70;
int dY;
float frameTime;
float a = 300;
float force = 500;
float friction = 0.9;

Ball[] balls = new Ball[n];

Planet moon;

void setup()
{
  size(720,720);
  for(int i = 0; i < n; i++) {
    balls[i] = new Ball();
  }
  moon = new Planet();
  frameRate(60);
}

void draw()
{
  int currentTime = millis();
  frameTime = currentTime - time;
  frameTime = frameTime * 0.001f;

  background(0);
  for(int i = 0; i < n; i++) {
    balls[i].move(moon);
    balls[i].bounce();
    balls[i].display();
    moon.move();
    moon.display();
  }
  /// more ways to draw for loops with the same effect
  // for(int i = 0; i < balls.length; i++){
  //   Ball ball = balls[i];
  //   ball.move();
  //   ball.bounce();
  //   ball.display();
  // }
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
  int size;

  Ball(){
    pos = new PVector(width/2, height/2);
    velDir = new PVector(random(-force,force),random(-force,force));
    r = random(255);
    g = random(255);
    b = random(255);
    size = 20;
  }

  void move(Planet planet){
    pos.y += (velDir.y * frameTime);
    pos.x += (velDir.x * frameTime);
    //velDir.y += (a * frameTime);
    velDir.x += ((planet.pos.x - pos.x)* (0.1*planet.size) *frameTime)
    /(abs(planet.pos.x - pos.x))*(abs(planet.pos.x - pos.x));
    velDir.y += ((planet.pos.y - pos.y)* (0.1*planet.size) *frameTime)
    /(abs(planet.pos.y - pos.y))*(abs(planet.pos.y - pos.y));
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
    ellipse(pos.x, pos.y, size,size);
  }

}

class Planet{
  PVector pos;
  float r, g, b;
  int size;

    Planet(){
      pos = new PVector(width/2, height/2);
      r = random(255);
      g = random(255);
      b = random(255);
      size = 70;

    }

    void move(){
      pos.x = mouseX;
      pos.y = mouseY;
    }

    void display(){
      stroke(0);
      strokeWeight(2);
      fill(r, g, b);
      ellipse(pos.x, pos.y, size,size);
    }

}
