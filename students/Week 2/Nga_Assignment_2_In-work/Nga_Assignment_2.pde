 void setup(){
 background(#00A3E1);
 size(1000,1000);
 
}

void draw(){
  int squiggleRandomSpread = 5;
  size(500,500);
  smooth();
  
  fill(255,10);
  noStroke();
  rect(150,500,width,height);
  
  strokeWeight(2);
  stroke(5,50);
  if(!mousePressed)  line(pmouseX,pmouseY,mouseX,mouseY);
  
  strokeWeight(5);
  if(mouseX > width/2){
    float colorSpread = squiggleRandomSpread * 10;
    int colorChange = (int)random(55 + colorSpread, 55 + colorSpread);
    
    stroke(255,colorChange,10,200);
  } else {
    stroke(55,255,10,200);
  }
  
  float randomPX = pmouseX + random(-squiggleRandomSpread,squiggleRandomSpread);
  float randomPY = pmouseY + random(-squiggleRandomSpread,squiggleRandomSpread);
  float randomX = mouseX + random(-squiggleRandomSpread,squiggleRandomSpread);
  float randomY = mouseY + random(-squiggleRandomSpread,squiggleRandomSpread);
  
  if(mousePressed)  line(randomPX,randomPY,randomX,randomY);
  
  fill(#fde800);
  ellipse(156, 46, 55, 55);
  

}
     
