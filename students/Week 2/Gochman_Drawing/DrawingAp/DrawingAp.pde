int BrushStroke = 1;
int BrushStrokeLarge = 30;
float colorchange = (int)random(100,255);


void setup(){
  size(1200,1000);
  smooth();
//  background (second()*3, second()/3, second()+3);
  background (#FFFFFF);
   
  
}

void draw(){
  
 if (!(pmouseX == 0 && pmouseY == 0))  { 
  
if(mousePressed) { 
     fill(255, 10);
      noStroke();
     rect(0,0,width, height);
   }
  noStroke();


  //   Top Right
  if(mouseX > width/2 && mouseY < height/2){
    stroke(0,198,255);
    strokeWeight(BrushStroke);
    line(random(height/2,width/2),pmouseY,mouseX,mouseY);
 
    
  } 
  
   //   Top Right - Mouse Click
    if(mouseX > width/2 && mouseY < height/2 && mousePressed){
    strokeWeight(5);
 line(random(height/2,width/2),pmouseY,mouseX,mouseY);
   
    
  } 
  
  
  
  
 //   Top Left
   if(mouseX < width/2 && mouseY < height/2){
    stroke(0,255,120);
    strokeWeight(30);
    line(pmouseX,pmouseY,mouseX,mouseY);
     strokeCap(ROUND);
    
  } 
  
   //   Top Left - Mouse Click
   if(mouseX < width/2 && mouseY < height/2 && mousePressed){
    stroke(0,255,120);
    strokeWeight(60);
    line(pmouseX,pmouseY,mouseX,mouseY);
     strokeCap(ROUND);
    
  } 
  
  
  
   //   Bottom Right
   if(mouseX > width/2 && mouseY > height/2){
   strokeWeight(70);
   stroke(255,204,0);
   strokeCap(ROUND);
   line(pmouseX,pmouseY,mouseX,mouseY);
 
 }
 
    //   Bottom Right - Mouse Click
   if(mouseX > width/2 && mouseY > height/2 && mousePressed){
   strokeWeight(100);
   stroke(255,204,0);
   strokeCap(ROUND);
   line(pmouseX,pmouseY,mouseX,mouseY);
 
 }





  //   Bottom Left
  if(mouseX < width/2 && mouseY > height/2){
  strokeWeight(BrushStrokeLarge);  
  stroke(255,108,0);
  strokeCap(SQUARE);
  line(pmouseX,pmouseY,mouseX,mouseY);
 }


   //   Bottom Left - Mouse Click
  if(mouseX < width/2 && mouseY > height/2 && mousePressed){
  strokeWeight(80);  
  stroke(255,108,0);
  line(pmouseX,pmouseY,mouseX,mouseY);
 }
 



//clear screen
  fill(255);
  strokeWeight(1);
  stroke(0);
  ellipse (20, 340, 40, 40); {
    if (mousePressed && dist(20, 340, mouseX, mouseY) < 80) {
      background (#FFFFFF);

   }
  }

 }

}
