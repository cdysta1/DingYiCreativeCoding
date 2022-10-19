PImage img;
int x,y;

void setup(){
  size(640,360);
  background(255);
  img = loadImage("pic1.jpg");
  noStroke();
  //image(img,0,0);  //If you want to see the original image.
}

void draw(){
  frameRate(60);
  x = mouseX;
  y = mouseY;
  if(mousePressed){
    brush();
  }
}

void brush(){
  color c = img.get(x,y);
  int radius = floor(random(15,25));
  fill(c,10*radius);
  rect(x,y,radius,radius);
}
