//Variables

int canvasWidth = 700;  
int canvasHeight = 700;
int borderX = canvasWidth/2;  //splits canvas horizontally in 2
int borderY = canvasHeight/2; //splits canvas vertically in 2

void setup(){
  
  size(canvasWidth, canvasHeight);
  strokeWeight(1); 
  stroke(#E0E0E0);
  
  //Quad 1 - Chalkboard
  fill(#0C4D0F);
  rect(0,0,borderX,borderY);
  
  //Quad 2 - Whiteboard
 
  fill(#FFFFFF);
  rect(borderX,0, width, borderY);
  
  //Quad 3 - Wall
  fill(#FFFEED);
  rect(0, borderY, borderX, height);
  
  //Quad 4 - Notebook
  fill(#E5FFEF);
  rect(borderX, borderY, width, height);
  for(int i = borderX; i<height; i+=20)
  {
    stroke(#9BE8D8);
    line(borderX, i, width, i);
  }
}

void draw(){
  
  //If mouse is in Quad 1
  if((mouseX < (borderX)) && (mouseY < (borderY)))
    chalk();
  else{
    //If mouse is in Quad 2
    if((mouseX > (borderX)) && (mouseY < (borderY)))
      marker();
    else{
      //If mouse is in Quad 3
      if((mouseX < (borderX)) && (mouseY > (borderY)))
        spray();
      else
        //If mouse is in Quad 4
        pencil();
    }
  }
} 

void chalk() {
  
  noStroke();
  fill(#E0FCF0,98);
  
  int chalkX = mouseX;
  int chalkY = mouseY;
  
  if(mouseX>borderX)
     chalkX = mouseX-10;
  if(mouseY>borderY)
     chalkY = mouseY-10;
  
  for(int i=0;i<=30;i++) {
    ellipse(chalkX-random(0,7),chalkY+random(0,7),random(2,3),random(2,3));
  }                
}

void marker() {
  
  strokeWeight(5);
  stroke(#4AD8CB,98);
   
  if(pmouseX<borderX)
     line(borderX,pmouseY,mouseX,mouseY);
  else{
     if(pmouseY>borderY)
        line(pmouseX,borderY,mouseX,mouseY);
     else
        line(pmouseX,pmouseY,mouseX,mouseY);
  }
}

void spray() {
  
  noStroke();
  fill(#20D18E);
  
  int sprayX = mouseX;
  int sprayY = mouseY;
  
  if(mouseX>borderX)
     sprayX = mouseX-30;
  if(mouseY<borderY)
     sprayY = mouseY-30;
  
  for(int i=0;i<=30;i++) {
    ellipse(sprayX-random(0,30),sprayY+random(0,30),1.2,1.2);
  }                
}

void pencil() {
  
  strokeWeight(1);
  stroke(#C1C1C1,70);
  
  if(pmouseX<borderX)
     pmouseX = borderX;
  if(pmouseY<borderY)
     pmouseY = borderY; 
  
  for(int i=0;i<3;i++){
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}
