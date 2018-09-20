// Assignment 1, Write my name
int underlineX = 100;
int scanLineDistance = 10;
int frames = 0;
int scanLean = 200;

void setup()
{
  size(768, 432);
}

void draw()
{
  background(136, 37, 42);
  stroke(3, 3, 3);
  strokeWeight(13.9);
  fill(136, 37, 42);

  // First Letter "H"
  line(100, 300, 100, 110);
  line(165, 300, 165, 110);
  line(165, 240, 100, 221);
  // Second Letter "e"
  ellipse(231, 268, 70, 70);
  line(198, 268, 264, 268);
  // Third Letter "i"
  line(300, 300, 300, 234);
  ellipse(301, 203, 10, 10);
  //Fourth Letter "m"
  triangle(430, 300, 380, 300, 405, 241);
  triangle(334, 300, 384, 300, 356, 241);
  //Fifth Letter "e"
  ellipse(487, 268, 70, 70);
  line(520, 268, 454, 268);
  //Sixth Letter "r"
  arc(588, 270, 65, 65, 3.5, 5.6);
  line(555, 300, 555, 234);

  //Eraser and fills
  stroke(136, 37, 42);
  //For "m"
  triangle(430, 334, 380, 334, 405, 275);
  triangle(334, 334, 384, 334, 358, 275);
  //For the E's
  noFill();
  arc(248, 301, 35, 35, -1.5, HALF_PI);
  line(252, 282, 276, 282);
  arc(504, 301, 35, 35, -1.5, HALF_PI);
  line(514, 282, 530, 282);

  // Animated Underline
  stroke(3, 3, 3);
  underlineX = underlineX + 5;
  line(100, 330, underlineX, 330);
  if(underlineX > 612)
  {
      underlineX = underlineX - 5;
  }
  // Animated Scanline grid - modified from the class
  for (int i = 0; i < height + scanLean; i = i + scanLineDistance) {
    stroke(70, 0, 0, 100);
    strokeWeight(2);
    line(0, i + frames % scanLineDistance, width, i + frames % scanLineDistance - scanLean);
  }
    for (int i = 0; i < height + scanLean; i = i + scanLineDistance) {
    stroke(70, 0, 0, 100);
    strokeWeight(2);
    line(0, i + frames % scanLineDistance - scanLean, width, i + frames % scanLineDistance);
  }
  frames++;
}
