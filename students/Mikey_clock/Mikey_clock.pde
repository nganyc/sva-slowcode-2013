//MIKEY CHEN
//CLOCK

void setup() {
  size(600, 600);
}
void draw() {
  background(213, 213, 213);
  noStroke();
  
  fill(245, 46, 96);
  float s = map(second(), 0, 59, 0, 50);
  ellipse(300, 300, s, s);
  
  fill(247, 255, 0, 120);
  float m = map(minute(), 0, 59, 50, 200);
  rect(300, 300, m, m);
  
  fill(4, 255, 63, 120);
  float h = map(hour(), 0, 59, 80, 200);
  ellipse(270, 270, h, h);
  
  
}

