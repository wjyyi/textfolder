int smallPoint  =4;
int largePoint  =40;
PImage img;
void setup(){
  size(1706,1280);
  img = loadImage("WechatIMG13.png");
  
  noStroke();
  background(255);
  frameRate(100000);
}

void draw(){
  float point = map (mouseX,0,width,smallPoint,largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x,y);
  fill(pix);
  ellipse(x,y,point,point);
}
