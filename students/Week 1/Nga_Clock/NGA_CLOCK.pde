void setup(){
  PFont metaBold;
  background(#635462);
  size(200, 200, P2D);

}

void draw(){
  
  noStroke();
  
  fill(#46554b);
  ellipse(75, 125, 155, 155);
  frameRate(0);
  
  fill(#f673ee);
  ellipse(169, 65, 55, 55);
  frameRate(1);

  fill(#bfa7fb);
  int m = millis();
  noStroke();
  fill(m % 255);
  ellipse(100, 105, 105, 105); 

  int d = day();    // Values from 1 - 31
  int mo = month();  // Values from 1 - 12
  int y = year();   // 2003, 2004, 2005, etc.
  String s = String.valueOf(d);
  text(s, 10, 28);
  s = String.valueOf(mo);
  text(s, 10, 56); 
  s = String.valueOf(y);
  text(s, 10, 84);
  }
