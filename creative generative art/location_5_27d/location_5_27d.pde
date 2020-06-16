void setup(){
  size(600,600);
  background(255);
}

void draw(){
  noStroke();
  float randomXLocation=random(600);
  if(randomXLocation<300){
    fill(random(100),random(100),random(255),30);
  }else{
    fill(random(100),random(255),random(255),30);
  }
  float randomDiameter=random(100);
  ellipse(randomXLocation,random(600),randomDiameter,randomDiameter);
}
