void setup(){
  size(600,600);
  background(255);
}

void draw(){
  fill(random(255),random(255),random(255));
  stroke(0);
  rect(random(width),random(height),random(100),random(120));
}
