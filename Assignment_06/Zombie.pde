class Zombie extends Human {
  Zombie(){
    super();
    velDir.x /= 2;
    velDir.y /= 2;
    zombie = 1;
  }

  Zombie(Human victim){
    pos = victim.pos;
    velDir = victim.velDir;
    velDir.x /= 2;
    velDir.y /= 2;
    zombie = 1;
  }

  void display(){
    fill(120,200,120);
    ellipse(pos.x,pos.y,size,size);
  }
}
