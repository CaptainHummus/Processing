// int n = 1;
// Ball[] balls = new Ball[n];
Ball b;

float frameTime;   //time for draw method
int time;
float a = 500;

void setup()
{
  size(480,480);
  // for(int i = 0; i < n; i++) {
  //   balls[i] = new Ball();
  // }
  b = new Ball();
  frameRate(60);
}

void draw()
{
  int currentTime = millis();
  frameTime = currentTime - time;
  frameTime = frameTime * 0.001f;

  background(255);
  b.move();
  b.bounce();
  b.display();

  time = currentTime;
}

class Ball
{
  PVector pos;
  PVector velDir;

  Ball(){
    pos = new PVector(width/2, height/2);
    velDir = new PVector(random(-1000, 1000), random(-1000,1000));
  }

  void move(){
    pos.y += (velDir.y * frameTime);
    pos.x += (velDir.x * frameTime);
    velDir.y += (a * frameTime);
  }

  void bounce(){
    if(pos.y > height || pos.y < 0){
      velDir.y = velDir.y  * -1;
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
    fill(128);
    ellipse(pos.x, pos.y, 20,20);
  }

}
