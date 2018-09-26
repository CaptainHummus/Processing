class Human{
  PVector pos;
  PVector velDir;
  int size = 15 + (int) random(5);
  int zombie = 0;
  int randomNumber = (int) random(100);
  int r = 155 + randomNumber;
  int g = 124 + randomNumber;
  int b = 89 + randomNumber;

  Human(){
    pos = new PVector();
    pos.x = random(width);
    pos.y = random(height);

    velDir = new PVector();
    velDir.x = random(-1,1);
    velDir.y = random(-1,1);
    velDir.normalize();
    velDir.x *= speedLimit;
    velDir.y *= speedLimit;
  }

  void update(){
    pos.x += velDir.x;
    pos.y += velDir.y;

    if(pos.y > height){
      pos.y = 0;
    }
    else if(pos.y < 0){
      pos.y = height;
    }
    else if(pos.x > width){
      pos.x = 0;
    }
    else if(pos.x < 0){
      pos.x = width;
    }
  }

  void display(){
    strokeWeight(0);
    fill(r,g,b);
    ellipse(pos.x,pos.y,size,size);
  }
}
