class CharacterManager {
  Human[] livingBoiz;

  CharacterManager(int amount){
    livingBoiz = new Human[spawnCount];
    for(int i = 0; i < spawnCount; i++){
      if (i == 0){
        livingBoiz[i] = new Zombie();
      }
      else{
        livingBoiz[i] = new Human();
      }
    }
  }
  void update(){
    for(int i = 0; i < spawnCount; i++){
      if(livingBoiz[i].zombie == 1){
        for(int j = 0; j < spawnCount; j++){
          if(livingBoiz[j].size == 0 || livingBoiz[j].zombie == 1 ){
            continue;
          }

          boolean hasCollided = roundCollision(livingBoiz[i], livingBoiz[j]);
          if(hasCollided){
            livingBoiz[j].size = 0;
            livingBoiz[j] = new Zombie(livingBoiz[j]);
            println("collision!");
          }
        }
      }

      livingBoiz[i].update();
      livingBoiz[i].display();
    }

  }
  void display(){
  }

}
