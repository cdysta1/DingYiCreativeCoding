//Sol Lewitt Wall Drawing 289, The Fourth Wall
void setup(){
  size(600,600);
  background(0);
  
  stroke(255);
  for(int i = 0; i < 24; i++){
    line(width/2,height/2,random(width),random(height));
  }
  for(int j = 0; j < 12; j++){
    line(width/2,0,random(width),random(height));
    line(width/2,height,random(width),random(height));
    line(0,height/2,random(width),random(height));
    line(width,height/2,random(width),random(height));
    line(0,0,random(width),random(height));
    line(0,height,random(width),random(height));
    line(width,0,random(width),random(height));
    line(width,height,random(width),random(height));
  }
}
