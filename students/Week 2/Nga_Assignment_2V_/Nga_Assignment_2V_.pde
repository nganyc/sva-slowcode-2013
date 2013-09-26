 void setup(){
 background(#00A3E1);
 size(1000,1000);
 
}

void draw(){
 
  noStroke();
  rect(0,0, width, height);
  fill(#318f08);
  ellipse(mouseX-13, mouseY, 30, 30);
  ellipse(mouseX, mouseY+25, 50, 50);
  ellipse(mouseX, mouseY-25, 50, 50);
  ellipse(mouseX+13, mouseY, 30, 30);
  
  float diameter = map(millis() %1000, 0, 999, 50, 200);
  if(!mousePressed)  line(pmouseX,pmouseY,mouseX,mouseY);
  fill(#fde800);
  ellipse(mouseX, mouseY, 35, 35);
 
  int squiggleRandomSpread = 5;
  smooth();
  strokeWeight(5);
  stroke(2,10);
  if(!mousePressed)  line(pmouseX,pmouseY,mouseX,mouseY);
  
  strokeWeight(5);
  if(mouseX > width/2){
    float colorSpread = squiggleRandomSpread * 10;
    int colorChange = (int)random(55 + colorSpread, 55 + colorSpread);
    
    stroke(255,colorChange,10,200);
  } else {
    stroke(35,100,10,50);
  }
  
  float randomPX = pmouseX + random(-squiggleRandomSpread,squiggleRandomSpread);
  float randomPY = pmouseY + random(-squiggleRandomSpread,squiggleRandomSpread);
  float randomX = mouseX + random(-squiggleRandomSpread,squiggleRandomSpread);
  float randomY = mouseY + random(-squiggleRandomSpread,squiggleRandomSpread);
  
  if(mousePressed)  line(randomPX,randomPY,randomX,randomY);
  
  
  }
  
