import controlP5.*;

ControlP5 slider;

void UI() {
  int sliderWidth = 150;
  int sliderHeight = 30;

  slider = new ControlP5(this, createFont("微软雅黑", 14));

  slider.addSlider("re_c")//控制变量c实部
    .setPosition(20, 20)
    .setSize(sliderWidth, sliderHeight)
    .setRange(-1.5,1)
    .setValue(0)
    ;
    
  slider.addSlider("im_c")//控制变量c虚部
    .setPosition(20, 70)
    .setSize(sliderWidth, sliderHeight)
    .setRange(-1,1)
    .setValue(0)
    ;
    
}
