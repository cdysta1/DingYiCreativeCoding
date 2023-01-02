void render() {
  loadPixels();
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      int num = sandpiles[i][j];
      color col = color(255);

      if (num == 0) {
        col = color(0);
      } else if (num == 1) {
        col = color(76, 92, 64);
      } else if (num == 2) {
        col = color(114, 121, 137);
      } else if (num == 3) {
        col = color(216, 174, 75);
      }

      pixels[i + j * width] = col;
    }
  }
  updatePixels();
}
