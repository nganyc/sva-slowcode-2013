void setup(){
  background(#000000);
  size(800,250); 
  noStroke();
  smooth();
}

void draw(){
  //Time Value
  int l = millis();
  int s = second();
  int m = minute();
  int h = hour();
  
  // White Cig base
  fill(#ffffff);
  rect(0,100,450,50);
  
  // Tan filter
  fill(#f6c259);
  rect(0,100,125,50);
  
  // Light tan filter dots
  fill(#F6D759);
  ellipse(110,110,4,4);
  ellipse(20,140,4,4);
  ellipse(34,102,4,4);
  ellipse(121,134,4,4);
  ellipse(84,107,4,4);
  ellipse(77,138,4,4);
  ellipse(48,120,4,4);
  ellipse(10,116,4,4);
  
  // Yellow burn
  fill(#FFFF00);
  rect(440,100,10,50);
  
  // Orange burn
  fill(#ff6600);
  rect(445,100,5,50);
  
  // Ash
  fill(#988F72);
  rect(450,100,10,50);
  
  // Black Reduce
  fill(#ECE3BE);
  rect(450,100,10,50);
  
  // Smoke Cloud 1
  fill(l % 255);
  ellipse(520,height/2,h,h);
  
  // Smoke Cloud 2
  fill(l % 255);
  ellipse(608,height/2,m,m);
  
  // Smoke Cloud 3
  fill(l % 255);
  ellipse(720,height/2,s+10,s+10);
  
}
