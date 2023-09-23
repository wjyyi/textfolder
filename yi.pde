int xPos;
int yPos;
int radiu;
int xMove;
int yMove;



void setup(){
  size(800,900);
  xPos=width/2;
  yPos=height/2;
  radiu=10;
  xMove=0;
  yMove=0;
  background(255);
}


void draw(){
  
  
  
  fill(77,170,173,30);
  noStroke();
  
  
  ellipse(xPos,yPos,radiu,radiu);
  xPos+=xMove;
  yPos+=yMove;
  
  if(mouseX>xPos&&mouseY>yPos){
    xMove+=1;
    yMove+=1;
  }
  if(mouseX<xPos&&mouseY>yPos){
    xMove-=1;
    yMove+=1;
  }
   if(mouseX>xPos&&mouseY<yPos){
    xMove+=1;
    yMove-=1;
  }
  if(mouseX<xPos&&mouseY<yPos){
    xMove-=1;
    yMove-=1;
  }
}
