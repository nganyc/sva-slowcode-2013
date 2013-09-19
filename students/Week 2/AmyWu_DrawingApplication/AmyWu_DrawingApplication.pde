int circleDiameter = 25;
int yellowLineWeight = 100;

void setup(){
  background(255);
  size(800, 400);
  smooth();

}

void draw(){
  fill(#FC9312,15);
  noStroke();
  rect(0,0,width,height);
  
  // top right quadrant //
  if(mouseX > (width/2)+(yellowLineWeight/2) && mouseY < (height/2)-(yellowLineWeight/2)){ 
    strokeWeight(yellowLineWeight);
    stroke(255,255,0);
    if(!mousePressed)  line(mouseX,mouseY,mouseX,mouseY);
    
  // bottom right quadrant //
  } else if(mouseX > width/2 && mouseY > height/2){ 
    fill(255);
    noStroke();
    rect(0,0,width,height);
    fill(#3049AA);
    ellipse(mouseX, mouseY, circleDiameter, circleDiameter);
    ellipse(mouseX-13, mouseY, 10, 10);
    ellipse(mouseX, mouseY+13, 10, 10);
    ellipse(mouseX, mouseY-13, 10, 10);
    ellipse(mouseX+13, mouseY, 10, 10);
    
  // bottom left quadrant //
  } else if(mouseX < width/2 && mouseY > height/2){
    fill(#75F066,55);
    noStroke();
    rect(0,0,width,height);
    fill(255,0,0);
    triangle(mouseX, mouseY, mouseX+55, mouseY+25, mouseX-55, mouseY-45);
  
  // top left quadrant //
  } else { 
    fill(255);
    noStroke();
    rect(0,0,width,height);
    
    strokeWeight(10);
    stroke(0,255,255);
    if(!mousePressed)  line(mouseX,mouseY,mouseX+15,mouseY-15);
    
    strokeWeight(10);
    stroke(255,0,255);
    if(mousePressed)  line(mouseX,mouseY,mouseX,mouseY);
      
  }

}


