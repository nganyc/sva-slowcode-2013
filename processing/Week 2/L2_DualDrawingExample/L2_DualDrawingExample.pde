
int squiggleRandomSpread = 10;
int previousX;
int previousY;

boolean hasClicked;

void setup(){
  size(1000,500);
  smooth();
  
  hasClicked = false;
}

void draw(){
  if(pmouseX > 0 || pmouseY > 0) {
    hasClicked = true;
  }
  
  
  if(hasClicked) {
    fill(255,10);
    noStroke();
    rect(0,0,width,height);
    
    
    if(!mousePressed){
      strokeWeight(1);
      stroke(0,50);
      
      line(pmouseX,pmouseY,mouseX,mouseY);
    }
    strokeWeight(5);
    if(mouseX > width/2){
      float colorSpread = squiggleRandomSpread * 10;
      int colorChange = (int)random(100 - colorSpread, 100 + colorSpread);
      
      stroke(255,colorChange,10,200);
    } else {
      stroke(55,10,250,200);
    }
    
    float randomPX = pmouseX + random(-squiggleRandomSpread,squiggleRandomSpread);
    float randomPY = pmouseY + random(-squiggleRandomSpread,squiggleRandomSpread);
    float randomX = mouseX + random(-squiggleRandomSpread,squiggleRandomSpread);
    float randomY = mouseY + random(-squiggleRandomSpread,squiggleRandomSpread);
    
    if(mousePressed) {
      line(randomPX,randomPY,randomX,randomY);
    }
    
    previousX = mouseX;
    previousY = mouseY;
  }
}
