Leaf[] leaf;
Girl girl;

PImage tree;
PImage girlsad;
PImage leafs;


float girlX;

PFont font;

boolean walk=false;
boolean changeBackground=false;

void setup(){
 size(900,600);
 background(255);
 
 tree=loadImage("tree.png");
 girlsad=loadImage("girl.png");
 leafs=loadImage("leaf.png");
 
 leaf= new Leaf[5];
 for(int i=0;i<leaf.length;i++){
   leaf[i]= new Leaf(); 
}

 girl=new Girl();
}

void draw(){
  
  background(255);
  girl.nen();
  
  fill(255);
  ellipse(100,50 , frameCount % 5, frameCount % 5);
  ellipse(200, 100, 5,5);
  ellipse(150, 200, 7,7);
  ellipse(150, 150, frameCount % 5, frameCount % 5);
  ellipse(300, 50, frameCount % 5, frameCount % 5);
  ellipse(400, 200, frameCount % 5, frameCount % 5);
  stroke(255);
  line(245,120,190,150);
  line(130,50,70,80);
  line(400,80,345,110);
  
   for(int i=0;i<leaf.length;i++){
  leaf[i].ascend();
  leaf[i].display();
  }
  rectMode(CENTER);  
  image(girlsad,girlX,300,200,400);
  image(tree,100,-10,700,650);
  
  
  font=createFont("MS P 明朝",20);
  textFont(font);
  fill(255);
  text("闇い", 10, 30); 
   
 if(walk){
   girl.ascend();
 }
  
}
void keyPressed(){     
       walk=!walk; 
      
 }

void mousePressed(){
  changeBackground=!changeBackground;
   
}


 
