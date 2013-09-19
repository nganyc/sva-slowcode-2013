
void setup() {
  size (800,500);
  background (0);
  frameRate (20);
}

void draw() {
 
  int h = hour();    // Values from 0 - 23
  int m = minute();  // Values from 0 - 59
  int s = second();  // Values from 0 - 59
  
  float x = height-(20.83*h);
  float y = height-(8.33*m);
  float z = height-(8.33*s);
  
  float a = 0;
  float wipe = 10;
  
// Divider line
  
  stroke (255);
  strokeWeight(0.5);
  line (width/2,0,width/2,height);
 
// Clear hours, minutes, second at start of new cycle
  
  if (s == 0) {
   noStroke();
   fill(0);
   rect (1,0,width/2-1,height);
   rect (width/2+1,0,width-1,height);
  
  } else {

   // Second markers 
  
  stroke (255,0,0,height-z-5);
  strokeWeight(0.5);
  line (1,z,width-1,z);
 
  
// Hour, minutes markers

  stroke (z-10);
  strokeWeight(5);
  line (1,x,width/2-25,x);
  line (width/2+25,y,width-1,y);
  


}

  }
