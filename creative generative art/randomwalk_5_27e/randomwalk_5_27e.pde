float xLocation;
float yLocation;


void setup(){
  size(600,600);
  background(198,236,206);
  xLocation=random(width);
  yLocation=random(height);
  
}

void draw(){
  float newXLocation=xLocation+random(100)-50;
  float newYLocation=yLocation+random(100)-50;
  
  if(xLocation<0){
    newXLocation=0;
  }
  if(xLocation>width ){
    newXLocation=width;
  }
  if(yLocation<0){
    newYLocation=0;
  }
  if(yLocation>height){
    newYLocation=height;
  }
  
  line(xLocation,yLocation,newXLocation,newYLocation);
  fill(random(255),random(255),random(255),200);
  float Circlesize= random(50);
  
  ellipse(newXLocation,newYLocation,Circlesize,Circlesize);
  xLocation=newXLocation;
  yLocation=newYLocation;
}


void mousePressed(){
  saveFrame("Frame/####.jpg");
}
