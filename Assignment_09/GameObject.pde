public class GameObject {

  float x;
  float y;
  float size;
  int unitShade;

  boolean alive = false;
  boolean aliveNext = false;

  public GameObject (float x, float y, float size){
    this.x = x;
    this.y = y;
    this.size = size;
    unitShade = 0;
  }

  void update(){
    if(aliveNext){
      alive = true;
    }
    else {
      alive = false;
    }
  }

  void draw(){

    if (alive && unitShade == 1) {
      fill(0,80,100);
      rect(x, y, size, size);
    }
    else if (alive && unitShade > 10) {
      fill(0,100,60);
      rect(x, y, size, size);
    }
    else if (alive && unitShade > 1) {
      fill(0,100+(unitShade*2),100-(unitShade*4));
      rect(x, y, size, size);
    }
    else if (alive){
      fill(0,80,100);
      rect(x, y, size, size);
    }

  }

}
