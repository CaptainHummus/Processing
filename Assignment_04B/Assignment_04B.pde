PVector GenVector;
PVector PlayerVector;

void setup()
{
  size (720, 720);
  GenVector = new PVector(random(width), random(height));

}

void draw()
{
  background(120,255,120);
  strokeWeight(5);
  textPrinter();
  line(0,height, PlayerVector.x, PlayerVector.y);

// cordinate system with 50 px spacing for easy vector drawing
  for (int i = 0; i < width/10; i++){
    for (int j = 0; j < width/10; j++){
      point (i *50,(height - j*50));
    }
  }

}

void textPrinter()
{
  textSize(16);
  fill(0,0,0);
  String str1 =("Draw a vector with the cordinates:" + round(GenVector.x) + ", " + round(GenVector.y));
  float textPosX = width/2 - textWidth(str1)/2 ;
  float textPosY = height/2;
  text(str1, textPosX, textPosY);
}

// void mouseReleased()
// {
//   PlayerVector = new PVector(mouseX, mouseY);
//
//
// }
