// Assignment 2 - Parabolic Curve
int lineCounter = 0;
int lineSpacing = 15;

void setup()
{
  size(720, 720);
}

void draw()
{
  background(255, 150, 150);
  paraboleGen();
}
void paraboleGen()
{
  strokeWeight(3);

  for(int i = 0; i < width; i = i + lineSpacing) {
    if (lineCounter % 3 == 0) {
      stroke(0);
    }
    else if (lineCounter % 3 != 0){
      stroke(50, 50, 50);
    }

    line(0, i + lineSpacing, width - i - lineSpacing, 0);
    lineCounter++;
  }
}
