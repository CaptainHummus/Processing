public class GameObject {

  float x;
  float y;
  float size;

  boolean alive = false;

  public GameObject (float x, float y, float size){
    this.x = x;
    this.y = y;
    this.size = size;
  }

  void update(int unitDies){
    if(unitDies == 1){
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
