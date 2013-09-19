float r = 0; 
float b = 100; 
float g = 0; 

void setup() { 
  size(400,400); 
  background(255);
} 

void draw() { 
  strokeWeight(5);
  if (mousePressed == true){  
    line(mouseX, mouseY, pmouseX, pmouseY);
    fill(r,g,b);
  }

  if(mouseX > width/2 && mouseY < width/2){
    r = r + 1; 
  
  } else { 
  
  if(mouseX < width/2 && mouseY > width/2)
    r = r - 1; 
    
  }
  
  if(mouseX > width/2 && mouseY > width/2){
    b = b + 1;
  
  } else { 
    
  if(mouseX < width/2 && mouseY < width/2)
    b = b - 1; 

  } 
 
r = constrain(r,0,255); 
g = constrain(g,0,255); 
b = constrain(b,0,255);

}
