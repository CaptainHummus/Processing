  PVector MChaser;
  PVector Bouncer;
  PVector MCDir;
  PVector BDir;
  float speedMC = 5;
  float speedB = 8;

void setup() {
  size(720, 720);
  MChaser = new PVector(width/2, height/2);
  Bouncer = new PVector(100,100);
  BDir = new PVector(random(-100, 100),random(-100, 100));
}

void draw() {
  background (0);
  MCDir = new PVector(mouseX -MChaser.x, mouseY -MChaser.y);
  MCDir.normalize();
  BDir.normalize();


  if(Bouncer.x > width || Bouncer.x < 0){
    BDir.x = BDir.x * -1;
  }

  if(Bouncer.y > height || Bouncer.y < 0){
    BDir.y = BDir.y * -1;
  }

  MChaser.x += MCDir.x * speedMC;
  MChaser.y += MCDir.y * speedMC;

  Bouncer.x += BDir.x *speedB;
  Bouncer.y += BDir.y *speedB;
  ellipse(MChaser.x, MChaser.y, 20, 20);
  ellipse(Bouncer.x, Bouncer.y, 30,30);
}
