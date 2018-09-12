int cordX = 0;
int cordY = 0;

void setup()
{
  size(1000, 1000);
}
void draw()
{
  background(255, 150, 150);
  parabol();
}
void parabol()
{
  strokeWeight(3);
  stroke(0);

  for(int i = 1; i < width; i = i + 10) {
    line(1, i, width - i , 1);
  }
}
