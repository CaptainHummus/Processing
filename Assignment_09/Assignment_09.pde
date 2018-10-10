GameObject cells[][];
float cellSize = 10;
int numberOfColumns;
int numberOfRows;
int fillPercentage = 15;

void setup() {
	size(512, 512);
	ellipseMode(LEFT);
	frameRate(10);

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
      if (cells[x][y].x != 0 && cells[x][y].x < (numberOfRows*cellSize)-10){
        if (cells[x][y].y != 0 && cells[x][y].y < (numberOfColumns*cellSize)-10){
          cells[x][y].update(neighborCheck(x,y));

        }
      }
		}
	}
}

int neighborCheck(int x, int y){
  int livingNeighbors = 0;

  if(cells[x][y].alive){
    livingNeighbors--;
  }

  for(int a = -1; a < 2; a++){
    for(int b = -1; b < 2; b++){
      if(cells[x+a][y+b].alive){
        livingNeighbors++;
      }
    }
  }
  if(livingNeighbors > 3){
    return 1;
  }
  else if(livingNeighbors < 2){
    return 1;
  }
  else if(livingNeighbors == 3 && cells[x][y].alive == false){
    return 0;
  }
  else {

  }
}
