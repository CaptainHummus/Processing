PVector GenVector;
PVector PlayerVector;
boolean playerClicked = false;
boolean textBool = false;
float score = 0;
String str1;
String str2;
String str3;


void setup()
{
  size (720, 720);
  GenVector = new PVector(random(width), random(height));
  str1 =("Draw a vector with the cordinates:" + round(GenVector.x) +
   ", " + round(GenVector.y));
  background(120,255,120);

}

void draw()
{
  strokeWeight(3);
  textPrinter();
  PlayerVector = new PVector(mouseX, mouseY);

// cordinate system with 50 px spacing for easy vector drawing
  for (int i = 0; i < width/10; i++){
    for (int j = 0; j < width/10; j++){
      point (i *50,(height - j*50));
    }
  }

}

void textPrinter()
{
  if(textBool){
    return;
  }
  textBool = true;
  textSize(16);
  fill(0,0,0);

  float textPosX = width/2 - textWidth(str1)/2 ;
  float textPosY = height/2;
  text(str1, textPosX, textPosY);
}

void mouseReleased()
{
  if (playerClicked){
    return;
  }

  PlayerVector = new PVector(mouseX, mouseY);
  playerClicked = true;
  line(0,height, PlayerVector.x, PlayerVector.y);
  str2 =("Your vector has the cordinates:" + round(PlayerVector.x) +
   ", " + round(height - PlayerVector.y));
  score = round(abs(GenVector.x - PlayerVector.x) + abs(GenVector.y - (height - PlayerVector.y)));
  str3 = ("Your Score is: " + (int)score + " (Lower is better)");
  text(str2, width/2 - textWidth(str2)/2, height/2 + 40);
  text(str3, width/2 - textWidth(str3)/2, height/2 + 100);


}
