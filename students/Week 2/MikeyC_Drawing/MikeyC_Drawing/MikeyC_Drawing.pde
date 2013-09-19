//MIKEY CHEN
//WEEK 2
//DRAWING SKETCH


void setup(){
size(1000, 300);
background(#E1E1E1);
smooth();

}
 
void draw(){
  float dm = dist(pmouseX, pmouseY, mouseX, mouseY)*2;
  if((mouseX < width/2) && (mouseY < height/2) && (mousePressed)) {stroke(250, dm*6, 187);
  strokeWeight(max(35-dm, 1));
  line(mouseX, mouseY, pmouseX, pmouseY);
 } 
 else if ((mouseX > width/2) && (mouseY < height/2) && (mousePressed)) 
 {stroke(20, dm*8, dm*8);strokeWeight(max(25-dm, 1));
  line(mouseX, mouseY, pmouseX, pmouseY);}
  
  else if ((mouseX < width/2) && (mouseY > height/2) && (mousePressed)) 
 {stroke(dm*5, 98, dm*5);strokeWeight(max(30-dm, 1));
  line(mouseX, mouseY, pmouseX, pmouseY);}
  
  else if ((mouseX > width/2) && (mouseY > height/2) && (mousePressed)) 
 {stroke(255, dm*8, 98);strokeWeight(max(35-dm, 1));
  line(mouseX, mouseY, pmouseX, pmouseY);}
  
  
  else   {stroke(251, 255, dm*6);strokeWeight(max(10-dm, 1));
  line(mouseX, mouseY, pmouseX, pmouseY);}
 
  }

 

