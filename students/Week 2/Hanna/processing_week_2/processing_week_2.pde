
boolean hasMoved;
PFont afont; 

void setup() {
  size (1000, 600);
  smooth();
  hasMoved = false;
afont = loadFont("afont.vlw");
}
// setup the first condition


void draw() {
float diameter = map(millis() % 1000, 0, 500, 1, 90);
float weight = dist(mouseX, 0, width/2, 0);
float lineWeight = map(weight, 0, width/2, 0, 50);
float thick = dist(mouseX, mouseY, pmouseX, pmouseY);
//Variables

frameRate(100); // smooth the movement


textFont(afont, 70);
fill(0,100);
text("YOU", width/2-300, height/2-100);
text("ARE", width/2+200, height/2-100);
text("AWESOME", width/2-360, height/2+180);
text("!!", width/2+230, height/2+180);

if (pmouseX>0 && pmouseY>0) {
    hasMoved = true;
  }
  if (hasMoved) {
    fill(0,10);
    noStroke();
    rect(0, 0, width, height);
  } // subtle background fill

strokeWeight(lineWeight);
stroke(255,150);
line(pmouseX, pmouseY, mouseX, mouseY);
if(mousePressed ==true) {
 stroke(random(0,255),random(0,255),random(0,255),255);
line(pmouseX, pmouseY, mouseX, mouseY);}

  
  
 
  strokeWeight(0.5);
  stroke(255, 50);
  if (mouseX < width/2 && mouseY <height/2) {
    for (int i = 0; i < 500; i += 20)
       line(i, 0, mouseX, mouseY);
        for (int i = 0; i < 500; i += 20)
       line(mouseX, mouseY, i, height/2);
  }
      if(mousePressed == true) {
        stroke (random(0,255), random(0,255), random(0, 255), 150);
     }
      if (mouseX < width/2 && mouseY <height/2) {
    for (int i = 0; i < 500; i += 20)
       line(i, 0, mouseX, mouseY);
        for (int i = 0; i < 500; i += 20)
       line(mouseX, mouseY, i, height/2);
  }  //the first section (Loop, MousePressed) 
    
 
  
  noStroke();
  if(mouseX > width/2 && mouseY < height/2){
    fill(255, 30); 
    triangle(width/2, 0, width/2, height/2, mouseX, mouseY);  
 if(mousePressed == true){
   fill(random(0,255), random(0,255),random(0,255),90);
   triangle(width/2, 0, width/2, height/2, mouseX, mouseY);
 }
  } //second section
  
  strokeCap(SQUARE);
   strokeWeight(lineWeight);
   stroke(255, 30);
   if (mouseX< width/2 && mouseY > height/2){
     for (int x = 0; x < width/2; x += 20)
       line(x, height/2, x, height);
    
       if(mousePressed == true){
        stroke(random(0,255), 255, 0, 30);
         for (int x = 0; x < width/2; x += 40)
       line(x, height/2, x, height);    
        stroke(random(0,255), 255, 0, 30);
 }
   }// third section
   
   if (mouseX> width/2 && mouseY > height/2){
     ellipse(mouseX, mouseY, diameter, diameter);
    if(mousePressed ==true) {
      strokeWeight(thick);
      stroke(random(0,255),random(0,255),random(0,255),255);
      ellipse(mouseX-random(-100,100), mouseY-random(-100,100), diameter-100, diameter-100);
}}
}
