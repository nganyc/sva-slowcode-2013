void setup() {
  size(300, 300);
  noStroke();
}

void draw() { 
  background(0, 0, 255); 
  
  fill(255, 0, 0);
  ellipse(width/2, height/2, map(hour(), 0,23, 0, 250), map(hour(), 0,23, 0, 250));
  
  fill(255, 255, 0, 200);
  ellipse(width/2, height/2, map(minute(), 0,59, 0, 150), map(minute(), 0,59, 0, 150));
  
  fill(0, 255, 0, 100);
  ellipse(width/2, height/2, map(second(), 0,59, 0, 250), map(second(), 0,59, 0, 250));
  
}

