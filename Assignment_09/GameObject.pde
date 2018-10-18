public class GameObject {

  float x;
  float y;
  float size;
  int lifeShade;
  int deathShade;
  int livingNeighbors;

  boolean alive = false;
  boolean aliveNext = false;

  public GameObject (float x, float y, float size){
    this.x = x * size;
    this.y = y * size;
    this.size = size;
    deathShade = 10;
    lifeShade = 0;
    livingNeighbors = 0;
  }

  void update(){
    if(aliveNext){
      alive = true;
      lifeShade++;
      deathShade = 0;
    }
    else {
      alive = false;
      deathShade++;
      lifeShade = 0;
    }
  }

  void draw(){
    if (alive && lifeShade > 10) {
      fill(0,100,60);
    }
    else if (alive && lifeShade >= 0) {
      fill(0,90+lifeShade,100-(lifeShade*4));
    }
    else if (!alive && deathShade > 10){
      fill(30,100,0);
    }
    else if (!alive && deathShade >= 0){
      fill(0+deathShade*2,100,40 -(deathShade*4));
    }
    rect(x, y, size, size);
  }
}
