class Girl{

  Girl(){
   girlX=0;
  }
 
  void ascend(){
    girlX+=2;
    if(girlX>width+50){
      girlX=380;
    }
  }
  
  void nen(){
   
    colorMode(RGB);
    noStroke();
    fill(#65567f);
    rect(0,0,1800,1200);
    if (changeBackground && girlX>380){
    fill(#9ab5cd);
    rect(910,0,910,1200);
    
    font=createFont("MS P 明朝",20);
    textFont(font);
    fill(255);
    text("明るい", 820, 30);
    }
    }

}
