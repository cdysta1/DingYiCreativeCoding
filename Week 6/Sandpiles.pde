
int[][] sandpiles;

void setup() {
  size(600, 600);
  sandpiles = new int[width][height];
  sandpiles[width/2][height/2] = 40000;
}

void draw() {
  //frameRate(60);
  render();
  for (int i = 0; i < 100; i++) {
    topple();
  }
}


void topple() {
  int[][] nextpiles = new int[width][height];
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      int num = sandpiles[i][j];
      if (num<4) {
        nextpiles[i][j] = sandpiles[i][j];
      }
    }
  }

  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      int num = sandpiles[i][j];
      if (num>=4) {
        nextpiles[i][j] += (num - 4);
        nextpiles[i+1][j]++;
        nextpiles[i-1][j]++;
        nextpiles[i][j+1]++;
        nextpiles[i][j-1]++;
      }
    }
  }

  sandpiles = nextpiles;
}
