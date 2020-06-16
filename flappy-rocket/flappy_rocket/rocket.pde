class Rocket{
  
float velocityY;
float acceleration;
float jumpAcceleration;

 Rocket(){
   velocityY=0;
   acceleration=0.2;
   jumpAcceleration=-8;
 }
void falldown(){
  velocityY+=acceleration;
  rocketCoordY+=velocityY;
  
 if(rocketCoordY<30){
   rocketCoordY=30;
   velocityY=velocityY*-0.2;
 }
 
}
void jump(){
  velocityY+=jumpAcceleration;
  file2.play();
  
}

void display(){
  rocketCoordX=150;
  image(maybay,rocketCoordX,rocketCoordY,100,100);
  
}

}
