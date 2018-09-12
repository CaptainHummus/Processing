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
  test();
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

void test()
{
  parabol a = new parabol();

  a.position = 0;
  a.axis1 = 480;
  a.axis2 = 480;
  a.numberOfLines = 
}

class parabol {
  int position;
  int axis1;
  int axis2;
  int numberOfLines;
}
