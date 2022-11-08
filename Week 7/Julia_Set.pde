
float re_c = 0;//变量c实部
float im_c = 0;//变量c虚部

void setup() {
  size(600, 600);
  
  UI();
}

void draw() {
  background(0);

  float re_z = 0, im_z = 0;

  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      re_z = map(i, 0, width, -2, 2);
      im_z = map(j, 0, width, -2, 2);//构建复平面坐标系以及复变量z
      int n = 0;//控制函数迭代次数

      while (n<100) {
        float re_z_new = re_z * re_z - im_z * im_z;
        float im_z_new = 2 * re_z * im_z;//计算复数z的平方

        re_z = re_z_new + re_c;
        im_z = im_z_new + im_c;//计算z的平方加c

        if (abs(re_z + im_z) > 16) {
          break;
        }//如果z的值不收敛，则停止

        n++;

        if (n==50) {          stroke(255);
          point(i, j);
        }//如果z的值收敛，则描出点
      }
    }
  }
}

void keyPressed(){
  if(key == 's'){
    save("Julia.jpg");
  }
}
