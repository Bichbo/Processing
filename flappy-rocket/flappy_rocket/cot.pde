class Cot{

float y2;
float distances;
float x;
float y1;

Cot(float distance,float cotY){
  distances=distance;
  x = width+200+distances;
  y1 = cotY;
  y2=y1+450;
  
}
  
  void ascend(){
    x=x-5;
    if(x<-350){
         x=width+550;
         cotY=random(-50,250);
       }
  }
  
  void display(){
    image(above,x,y1,200,550);
    image(below,x,y2,200,550);
  }
  
  void gameOver(){
    
    if(x-rocketCoordX<75 && x-rocketCoordX>-75){
      if(rocketCoordY-y1<170|| y2-rocketCoordY<170){
         gameOver=true;
         file1.play();
      }
    }
    
    if(rocketCoordY>height+50){
      gameOver=true;      
      file2.play();
    }
   
  }
  
  void restart(){
    loop();
    x = width+200+distances;
    y1 = random(-50,250);
    y2=y1+450;
   
  }
   
}
