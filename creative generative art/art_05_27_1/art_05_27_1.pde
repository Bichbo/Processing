void setup(){
  frameRate(1000);
  size(600,600);
  background(0);
  stroke(255,255,255,255);
}

void draw(){
  float xLocation=random(700);
  float yLocation=random(700);
  //background(255);
  fill(0,0,yLocation,20);
  ellipse(xLocation,yLocation,xLocation/10,yLocation/10);
}
