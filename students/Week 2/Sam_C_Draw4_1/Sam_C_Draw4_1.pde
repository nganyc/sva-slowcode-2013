void setup() {
  size(600,400);
  background(#FFCC00);
  smooth();
}

void draw() {
  
  if(mouseX < width/2 && mouseY < height/2){
    if (mousePressed){
    line(mouseX, mouseY, pmouseX, pmouseY);
    strokeWeight(1);
    fill(153);
    }
    
  }else{
   
  if(mouseX > width/2 && mouseY > height/2){
    if (mousePressed){
    line(mouseX, mouseY, pmouseX, pmouseY);
    strokeWeight(5);
    fill(#000080);
    }
    
  }
   
  if(mouseX < width/2 && mouseY > height/2){
    if (!mousePressed){
    line(mouseX, mouseY, pmouseX, pmouseY);
    strokeWeight(10);
    fill(#000010);
    }
    
  }else{
   
  if(mouseX > width/2 && mouseY < height/2){
    if (!mousePressed){
    line(mouseX, mouseY, pmouseX, pmouseY);
    strokeWeight(15);
    fill(#000030);
    }
  } 
  } 
}
}
