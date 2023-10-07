float[]d,eX,eY;


void setup(){
  size(800,800);
  background(255);
  d=new float[10];
  eX=new float[10];
  eY=new float[10];
  for(int idx=0;idx<10;idx++)
  {
    d[idx]=random(10,50);
    eX[idx]=random(0,width);
    eY[idx]=random(0,height);
    initiateDate();
  }
  
}
void initiateDate(){
  for(int idx=0;idx<10;idx++)
  {
    d[idx]=random(10,50);
    eX[idx]=random(0,width);
    eY[idx]=random(0,height);
 
  }
}

void draw(){
  background(0);
  for(int idx=0;idx<10;idx++){
  strokeWeight(map(d[idx],10,50,4,0.1));
  stroke(#4DAAAD);
    ellipse(eX[idx],eY[idx],d[idx],d[idx]);
  }
}

void keyPressed(){
  if(key=='r'){
    initiateDate();
  }
}
