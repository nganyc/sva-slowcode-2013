

boolean isWhite = true;
color titleColor = color(20,20,255);
PImage tigerImage;


void setup(){
  size(800,300);
  smooth();
  
  tigerImage = loadImage("tiger.jpg");
  
}

void draw(){
  image(tigerImage,0,0, width,height);
  //println("Printing... " + millis());
  
  fill(255);
  ellipse(mouseX, mouseY, 15,15);
}
