class Cloud{
 
float cloudX;
float cloudY;
  Cloud(){
    cloudX=random(width);
    cloudY=random(height);
  }
  
  void ascend(){
    cloudX=cloudX-5;
  }
  void display(){
    image(cloud,cloudX,cloudY,300,300); 
    //if(cloudX<-100){
      //cloudX=width+random(50,150);
    //}  
}
}
