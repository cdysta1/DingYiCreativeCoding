import peasy.*;

PeasyCam cam;

int total = 100;

PVector[][]globe;
float a = 1;
float b = 1;

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 500);
  globe = new PVector[total+1][total+1];
  surface.setLocation(50, 50);
  //UI();
}



float supershape(float angle, float m, float n1, float n2, float n3) {//based on the supershape formula

  float t1 = abs((1/a)*cos(m*angle/4));
  t1 = pow(t1, n2);
  float t2 = abs((1/b)*sin(m*angle/4));
  t2 = pow(t2, n3);
  float t3 = t1 + t2;
  float r = pow(t3, -1/n1);

  return r;
}

void draw() {

 // cam.beginHUD();
  //slider.draw();
  //cam.endHUD();

  background(0);
  fill(255);
  lights();
  //translate(width/2,height/2);
  float r = 200;
  float m = 7;
  float n1 = 1;
  float n2 = 1.7;
  float n3 = 1.7;
  for (int i = 0; i < total + 1; i++) {
    float lon = map(i, 0, total, -PI, PI);
    float r1 = supershape(lon,m,n1,n2,n3);
    for (int j = 0; j < total + 1; j++) {
      float lat = map(j, 0, total, -HALF_PI, HALF_PI);
      float r2 = supershape(lat,m,n1,n2,n3);
      float x = r * r1 * cos(lon) * r2 * cos(lat);
      float y = r * r1 * sin(lon) * r2 * cos(lat);
      float z = r * r1 * sin(lat);
      globe[i][j] = new PVector(x, y, z);
    }
  }

  for (int i = 0; i < total; i++) {
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < total + 1; j++) {
      PVector v1 = globe[i][j];
      //stroke(255);
      //noFill();
      noStroke();
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = globe[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
}
