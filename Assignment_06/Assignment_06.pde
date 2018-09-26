int spawnCount = 100;
CharacterManager god;
int speedLimit = 3;
int zombieCount = 0;
int secondsPassed = 0;
String str1 = ("GAME OVER - Everone is DEAD");
String str2;

void setup(){
 size (720,720);
 god = new CharacterManager(spawnCount);

}

void draw(){
  background(0);
  god.update();
  secondsPassed = millis()/1000;
  if (zombieCount == spawnCount){
    str2 = ("The Zombies won in " + secondsPassed +
    " seconds");

    fill(255,255,255);

    textSize(24);
    text(str1, width/2 - textWidth(str1)/2, height/2);
    text(str2, width/2 - textWidth(str2)/2, height/2 + 40);
    noLoop();

  }

}
