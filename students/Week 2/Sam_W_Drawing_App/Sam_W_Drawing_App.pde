// SIMPLE DRAWING APP ACROSS FOUR QUADRANTS

// Press mouse to increase weight of line
// Change thickness with this variable:

int thickness = 3;

// Change this variable to alter size of 'flare' lines:

float c = 120;

// Click any key to clear sketch and draw again

// ---------------------------------------------

PImage img;
 
void setup() {
  
  size(800,500);
  smooth();
  frameRate(80);

// background image

  img = loadImage("bg.png");
  image(img,0,0,width,height);

}

void draw() {

// transparency variable

float t = random(50,200);

// random variable for line width

float r = random(0,1);

// random variables for drawing around mouse point

float rx = random(mouseX-c,mouseX+c);
float ry = random(mouseY-c,mouseY+c);

rectMode(CORNERS);

// conditional for pressing mouse to affect line weight

   if (mousePressed) {
     strokeWeight(thickness);
   }
   
   else if (!mousePressed) {
     strokeWeight(r);
   }
   
// press key to clear (by redrawing background image)

   if (keyPressed) {
   image(img,0,0,width,height);
   }
   
// conditional for 0,0 problem
   
   if (mouseX<=0 && mouseY<=0) {
   noStroke();
   }

// conditionals for four quadrants

   else if (mouseX <= width/2 && mouseY <= height/2) {
    stroke(255,40);
    noFill();
    rect(0,0,mouseX,mouseY);
    
    stroke(215,77,30,t);
    line(mouseX,mouseY,rx,ry);
    }
    
   else if (mouseX >= width/2 && mouseY <= height/2) {
    stroke(255,40);
    rect(mouseX,mouseY,width,0);
    
    stroke(50,150,100,t);
    line(pmouseX,pmouseY,rx,ry);
    }
    
   else if (mouseX <= width/2 && mouseY >= height/2) {
    stroke(255,40);
    rect(0,height,mouseX,mouseY);
    
    stroke(112,173,158,t);
    line(pmouseX,pmouseY,rx,ry);
    }
    
  else if (mouseX >= width/2 && mouseY >= height/2) {
    stroke(255,t);
    rect(mouseX,mouseY,width,height);    
    stroke(244,244,0,t);
    line(pmouseX,pmouseY,rx,ry);
    }

}
