public class GameObject {

  float x;
  float y;
  float size;
  int unitLives;

  boolean alive = false;

  public GameObject (float x, float y, float size){
    this.x = x;
    this.y = y;
    this.size = size;
    unitLives = 1;
  }

  void update(){
    if(unitLives == 0){
      alive = false;
    }
    else {
      alive = true;
    }
  }

  void draw(){
    if (alive) {
      ellipse(x, y, size, size);
    }
  }

}
