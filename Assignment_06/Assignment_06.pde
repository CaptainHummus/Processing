int spawnCount = 30;
CharacterManager god;
int speedLimit = 3;

void setup(){
 size (720,720);
 god = new CharacterManager(spawnCount);

}

void draw(){
  background(0);
  god.update();

}