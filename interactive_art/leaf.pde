class Leaf{
  
  float x,y;
  
  Leaf(){
    x=random(400,width-100);
    y=random(-600,-200);
  }

  void ascend(){
      y=y+3;    
      x=x+random(-1,1);
   
  }
  void display(){
      image(leafs,x,y,250,300);
      if(y>height+200){
       y=random(-600,-200);
         
  }
}
}
