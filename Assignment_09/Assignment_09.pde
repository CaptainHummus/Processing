GameObject cells[][];
float cellSize = 10;
int numberOfColumns;
int numberOfRows;
int fillPercentage = 15;

void setup() {
	size(1000, 1000);
	ellipseMode(LEFT);
	frameRate(144);

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

}

void neighborCheck(int x, int y){
  int livingNeighbors = 0;

  if(cells[x][y].alive){
    livingNeighbors--;
  }
if (cells[x][y].x != 0 && cells[x][y].x < (numberOfRows*cellSize)-10){

}
  for(int a = -1; a < 2; a++){
    for(int b = -1; b < 2; b++){
      if(x+a > 0 && x+a < numberOfRows &&
				y+b > 0 && y+b < numberOfColumns && cells[x+a][y+b].alive){
        livingNeighbors++;
      }
    }
  }
  if(livingNeighbors > 3 || livingNeighbors < 2){
    cells[x][y].unitLives = 0;
  }
  else if(livingNeighbors == 3 || livingNeighbors == 2 && cells[x][y].alive){
    cells[x][y].unitLives = 1;
  }
}

void mousePressed(){
	loop();
}
void mouseReleased(){
	noLoop();
}
