GameObject cells[][];
GameObject cellsStableSave[][];
float cellSize = 10;
int numberOfColumns;
int numberOfRows;
int numberofCells;
int stableCellCounter = 0;
int fillPercentage = 10;
boolean loopCheck = true;
int generation = 0;
float animationCooldown = 6;
float animationCounter = 0;

void setup() {
	size(700, 700);
	colorMode(HSB, 100);
	stroke(0,0);
	numberOfColumns = (int)Math.floor(width/cellSize);
	numberOfRows = (int)Math.floor(height/cellSize);
	numberofCells = numberOfRows * numberOfColumns;
	cells = new GameObject[numberOfColumns][numberOfRows];
	cellsStableSave = new GameObject[numberOfColumns][numberOfRows];
	gridCheck("initState");
}

void draw() {
	frameRate(60);
  background(0);
	gridCheck("drawCells");
	if (animationCounter % animationCooldown == 0){
		gridCheck("checkNeighbors");
		gridCheck("updateCells");
		generation++;
		animationCounter = 0;
		if (generation % 6 == 0){
			gridCheck("compareGrid");
		}
	}
			stableCellCounter = 0;

	textPrinter(generation);
	animationCounter += 0.5;
	// println("fps: " + frameRate);
	// println("Counter: " + animationCounter);
	// println("Cooldown: " + animationCooldown);
}

void gridCheck(String check){
	for (int y = 0; y < numberOfRows; ++y) {
		for (int x = 0; x < numberOfColumns; ++x) {
			if (check == "initState"){
				cells[x][y] = new GameObject(x, y, cellSize);
				cellsStableSave[x][y] = new GameObject(x, y, cellSize);
				if (random(0, 100) < fillPercentage) {
					cells[x][y].alive = true;
				}
			}
			else if(check == "drawCells"){
				cells[x][y].draw();
				neighborCheck(x, y);
			}
			else if(check == "checkNeighbors"){
				neighborCheck(x, y);
			}
			else if(check == "updateCells"){
				cells[x][y].update();
			}
			else if(check == "compareGrid"){
				if (cellsStableSave[x][y].alive && cells[x][y].alive){
					stableCellCounter++;
					if(stableCellCounter == numberofCells){
						println("stable");
					}
					println(stableCellCounter);
				}
				else if (!cellsStableSave[x][y].alive && !cells[x][y].alive){
					stableCellCounter++;
					if(stableCellCounter == numberofCells){
						println("stable");
					}
					println(stableCellCounter);
				}
				cellsStableSave[x][y] = cells[x][y];
			}
		}
	}
}

void neighborCheck(int x, int y){
  int livingNeighbors = 0;

  for(int deltaX = -1; deltaX < 2; deltaX++){
    for(int deltaY = -1; deltaY < 2; deltaY++){
			if(deltaX == 0 && deltaY == 0){
				continue;
			}
      if(x+deltaX >= 0 && x+deltaX < numberOfRows &&
				y+deltaY >= 0 && y+deltaY < numberOfColumns &&
				cells[x + deltaX][y + deltaY].alive){
        livingNeighbors++;
      }
    }
  }
	if(livingNeighbors == 3 || livingNeighbors == 2 && cells[x][y].alive){
		cells[x][y].aliveNext = true;
  }
  else if(livingNeighbors > 3 || livingNeighbors < 2){
		cells[x][y].aliveNext = false;
  }
}

void textPrinter(int generation){
	String genCount = "Generation: ";
	textSize(20);
	fill(0,0,90);
	text(genCount + generation,10,20);
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
		if (keyCode == DOWN && animationCooldown != 30){
			animationCooldown+= 0.5;
		}
		if (keyCode == UP && animationCooldown != 0.5){
			animationCooldown-= 0.5;
		}
	}
}
