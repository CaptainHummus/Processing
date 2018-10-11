GameObject cells[][];
float cellSize = 8;
int numberOfColumns;
int numberOfRows;
int fillPercentage = 15;
int fps = 10;
boolean loopCheck = true;
int generation = 0;

void setup() {
	size(900, 900);
	colorMode(HSB, 100);
	stroke(0,0);

	numberOfColumns = (int)Math.floor(width/cellSize);
	numberOfRows = (int)Math.floor(height/cellSize);

	cells = new GameObject[numberOfColumns][numberOfRows];


	for (int y = 0; y < numberOfRows; ++y) {
		for (int x = 0; x < numberOfColumns; ++x) {
			cells[x][y] = new GameObject(x * cellSize, y * cellSize, cellSize);

			if (random(0, 100) < fillPercentage) {
				cells[x][y].alive = true;
			}
		}
	}
}

void draw() {
	frameRate(fps);
  background(0);

	for (int y = 0; y < numberOfRows; ++y) {
		for (int x = 0; x < numberOfColumns; ++x) {
			cells[x][y].draw();
			neighborCheck(x,y);
		}
	}
	for (int y = 0; y < numberOfRows; ++y) {
		for (int x = 0; x < numberOfColumns; ++x) {
			cells[x][y].update();
		}
	}
	text("Generation: " + generation,width/2,height/2);
	generation++;
}

void neighborCheck(int x, int y){
  int livingNeighbors = 0;

  if(cells[x][y].alive){
    livingNeighbors--;
  }

  for(int a = -1; a < 2; a++){
    for(int b = -1; b < 2; b++){
      if(x+a > 0 && x+a < numberOfRows &&
				y+b > 0 && y+b < numberOfColumns &&
				cells[x+a][y+b].alive){
        livingNeighbors++;
      }
    }
  }
  if(livingNeighbors > 3 || livingNeighbors < 2){
		cells[x][y].aliveNext = false;
  }
  else if(livingNeighbors == 3 || livingNeighbors == 2 && cells[x][y].alive){
		cells[x][y].aliveNext = true;
  }
}

void mousePressed(){
	if(loopCheck == true){
		noLoop();
		loopCheck = false;
		return;
	}
	if(loopCheck == false){
		loop();
		loopCheck = true;
		return;
	}
}

void keyPressed(){
	if(key == CODED){
		if (keyCode == UP && fps != 144){
			fps++;
		}
		if (keyCode == DOWN && fps != 1){
			fps--;
		}
	}
}
