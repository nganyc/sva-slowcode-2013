void setup() {
  size(600, 600);
  background(#F15A29);
  smooth();
}

void draw() {
  strokeWeight(20);
  stroke(0,50);
  fill(#ffffff);
  line(mouseX,mouseY,pmouseX,pmouseY);
  
  strokeWeight(1);
  stroke(0,50);
    
    
if (mousePressed && mouseX <width/1 && mouseY <height/1){
  stroke(0);
  strokeWeight(.3);
  fill(#FFF200);
  ellipse(mouseX,mouseY,30,30);
}  


if (mousePressed && mouseX <width/2 && mouseY <height/2){
  stroke(0);
  strokeWeight(.3);
  fill(#ffffff);
  ellipse(mouseX,mouseY,30,30);
}  
        
        
if (mousePressed){
  fill(0);
  } 
  else {
  fill(0);
  }
  ellipse(mouseX,mouseY,5,5);
}
