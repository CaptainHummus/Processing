int lineCounter = 0;
void setup()
{
  size(720, 720);
}
void draw()
{
  background(255, 150, 150);
  parabol();
}
void parabol()
{
  strokeWeight(3);

  for(int i = 0; i < width; i = i + 15) {
    stroke(50, 50, 50);
    if (lineCounter % 3 == 0) {
      stroke(0);
    }
    line(1, i, width - i , 1);
    lineCounter++;

  }
}
