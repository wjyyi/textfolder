
import geomerative.*;

RShape  grp;
RPoint[] points;

void  setup(){
  size(1000,1000);
  frameRate(24);
 // background(255);
  //fill(255,102,0);
  //stroke(0);
  
  RG.init(this);
  grp=RG.getText("ZHANG","chunkfive.ttf",200,CENTER);
}

void draw(){
  
  
  background(255);
  translate(width/2,height/2);
  
  noStroke();
  fill(#4D96ED);
  grp.draw();
  
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  float  length=map(mouseX,0,width,10,200);
  RG.setPolygonizerLength(length);
  points=grp.getPoints();
  
  stroke(#3071BF);
  if(points!=null){
    beginShape();
    for(int  i=0;i<points.length;i++){
      vertex(points[i].x,points[i].y);
    }
    endShape();
  }
  if(mousePressed)saveFrame();
}
    
