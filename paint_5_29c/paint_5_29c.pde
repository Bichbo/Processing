PImage anh;

void setup(){
 size(600,450);
 background(255);
 anh=loadImage("unnamed.jpg");
 //image(anh,0,0);
 frameRate(10000);
}
void draw(){
  
  
  int x= (int)random(width);
  int y= (int)random(height);
  int pixelIndex= x+y*width;
  color c =anh.pixels[pixelIndex];
  //stroke(c,100);
  fill(c,100);
  noStroke();
  //line(x,y,x+30,y+30);
  ellipse(x,y,5,5);
}
