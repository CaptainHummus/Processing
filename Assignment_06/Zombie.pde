class Zombie extends Human {
  Zombie(){
    super();
    velDir.x /= 2;
    velDir.y /= 2;
    zombie = 1;
    size = 20;
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

    //this shit is so messy, but it works
    line(pos.x - (4*velDir.y),
        pos.y + (4*velDir.x),
        (pos.x - (4*velDir.y)) + (velDir.x * size/2),
        (pos.y + (4*velDir.x)) + (velDir.y * size/2));
    line(pos.x + (4*velDir.y),
        pos.y - (4*velDir.x),
        (pos.x + (4*velDir.y)) + (velDir.x * size/2),
        (pos.y - (4*velDir.x)) + (velDir.y * size/2));
  }
}
