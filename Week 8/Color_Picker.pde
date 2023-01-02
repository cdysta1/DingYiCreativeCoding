
int r, g, b;
int which;

void setup() {
  size(640, 360);
  pickColor();
}

void draw() {
  background(r, g, b);
  strokeWeight(4);
  stroke(255);
  line(width/2,0,width/2,height);

  textSize(64);
  noStroke();
  fill(0);
  textAlign(CENTER, CENTER);
  text("black", 160, 150);
  fill(255);
  text("white", 480, 150);

  which = colorPredictor(r, g, b);

  if (which == 0) {
    fill(0);
    ellipse(160, 250, 60, 60);
  } else {
    fill(255);
    ellipse(480, 250, 60, 60);
  }
}

void mousePressed() {
  if (mousePressed) {
    pickColor();
  }
}

void pickColor() {
  r = floor(random(255));
  g = floor(random(255));
  b = floor(random(255));
}

int colorPredictor(int r, int g, int b) {
  if(r + g + b > 300){
    return 0;
  }else{
    return 1;
  }
  
}
