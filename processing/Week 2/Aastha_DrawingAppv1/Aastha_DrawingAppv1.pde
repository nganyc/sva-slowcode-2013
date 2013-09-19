
int circlesSpread = 5;

void setup(){
  size(1000,500);
  smooth();
  
}

void draw(){
  fill(255,10);
  noStroke();
  rect(0,0,width,height);
  
  strokeWeight(25);
  stroke(0,50);
  
  if(!mousePressed){  
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  
  strokeWeight(5);
    
   // section1 
  if(mouseX > width/2 && mouseY < height/2){
    float colorSpread = circlesSpread * 10;
    int colorChange = (int)random(55 + colorSpread, 55 + colorSpread);
    fill(255,255,0);
    ellipse(mouseX, mouseY, 30, 30);
  }
  //section 2
  else if (mouseX < width/2 && mouseY < height/2){
    //stroke(55,255,10,200);
    fill(64,224,208);
    ellipse(mouseX, mouseY, 30, 30);
  }
  //section3
    else if (mouseX < width/2 && mouseY > height/2){
    //stroke(55,255,10,200);
    fill(138,43,226);
    ellipse(mouseX, mouseY, 30, 30);
  }
  //section4
  else {
  fill(255,0,0);
    ellipse(mouseX, mouseY, 30, 30);
  }
  float randomPX = pmouseX + random(-circlesSpread,circlesSpread);
  float randomPY = pmouseY + random(-circlesSpread,circlesSpread);
  float randomX = mouseX + random(-circlesSpread,circlesSpread);
  float randomY = mouseY + random(-circlesSpread,circlesSpread);
  
  if(mousePressed)  line(randomPX,randomPY,randomX,randomY);
  
}
