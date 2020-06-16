Cot[] cot;
Rocket rocket;
Cloud[] clouds;

PImage above, below;
PImage maybay;
PImage cloud;

int rocketCoordX;
float rocketCoordY;
float cotDistance =0;
float cotY;

boolean gameOver;

import processing.sound.*;
SoundFile file1;
SoundFile file2;
void setup(){
  size(650,680);
  maybay=loadImage("rocket.png");
  above=loadImage("above.png");
  below=loadImage("below.png");
  
  cot = new Cot[5];
  rocketCoordY=height/2;
  imageMode(CENTER);
  rectMode(CENTER);
  
  rocket= new Rocket();
  gameOver=false;
  file1 = new SoundFile(this, "gameOver.mp3");
  file2 = new SoundFile(this, "jumpsound.mp3");
  
  for(int i=0;i<cot.length;i++){
    cotY=random(-50,250);
    cot[i]=new Cot(cotDistance,cotY);
    cotDistance+=300;
    }
    clouds=new Cloud[5];
    for(int i=0;i<clouds.length;i++){
    clouds[i]=new Cloud();
  }
  
 }

void draw(){
  background(20,115,210);
  
  cloud=loadImage("cloud.png");
  for(int i=0;i<clouds.length;i++){
    clouds[i].ascend();
    clouds[i].display();
  }
  
   rocket.display();
   rocket.falldown();
   
  for(int i = 0; i < cot.length;i++){
    cot[i].display();
    cot[i].ascend(); 
    cot[i].gameOver();
  }
  
  if(gameOver==true){
    gameOverDisplay();
  }
  
}
void keyPressed(){
  rocket.jump();
}
void gameOverDisplay(){
      fill(255);
      rect(width/2,height/2,300,100,7);
      textSize(32);
      fill(0);
      textAlign(CENTER,CENTER);
      text("GAME OVER", width/2, height/2); 
      noLoop();
  }

void mousePressed(){
  if(gameOver==true){
    gameOver=false;
    for(int i = 0; i < cot.length;i++){
    cot[i].restart();
    } 
  }
}
