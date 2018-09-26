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
    size = 20;
  }

  void display(){
    fill(120,200,120);
    ellipse(pos.x,pos.y,size,size);
    strokeWeight(3);
    stroke(120,200,120);
    line(pos.x, pos.y, pos.x + size * (velDir.x + 1),
      pos.y + size * (velDir.y + 1));
    line(pos.x, pos.y, pos.x - size * (velDir.x - 1),
      pos.y + size * (velDir.y - 1));
  }
}
