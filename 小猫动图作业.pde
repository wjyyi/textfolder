PImage[] img;
int index;

void setup(){
  size(800,800);
  img = new PImage[8];
  for(int i=1; i<img.length;i++){
    String str = "WechatIMG" + i + ".png";
    img[i] = loadImage(str);
  }
  index = 1;
  
}


void draw(){
  background(255);
  
  if(frameCount%5==0)index ++;
  if(index>img.length-1)index=1;
  image(img[index],width/2,height/2,width/2,height/2);
}
