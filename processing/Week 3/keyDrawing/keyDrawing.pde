
int speed = 1;
int x = 0;
PImage closed;
PImage open;
PImage hopen;
PImage hclosed;
String[] sentences = {"I love you!","Please dont go!","You did that?!","WITH WHO?!","Whatever"};
String[] hsentences = {"ew","who are you?","get away from me","really","fuck off!"};
PFont boldFont;

int counter = 0;

//float gravity = 0.1;

void setup(){
  size(1200,800);
  boldFont = loadFont("dialog.vlw");
  background(#FFFFFF);
  closed = loadImage("mouth_closed.jpg");
  open = loadImage("mouth_open.jpg");
  hclosed = loadImage("hclosed.jpg");
  hopen = loadImage("hopen.jpg");
  

  
}

void draw(){
  image(hclosed,955,300,267,200);
  image(closed,0,200,190,300);
  
  //background(0);
  

  
}

void mousePressed(){
  
}

  
void keyPressed(){
  if(key == 'g'){
//    move();
//    display();
//    int randomWord = (int)random(0,words.length);
    image(open,0,200,175,300);
    fill(#405FCB);
    textFont(boldFont,48);
    text(sentences[counter],200, random(0,height));
    counter ++;
    if(counter >= sentences.length) {
      counter = 0;
      background(#FFFFFF);
    }
  }
  
  if(key == 'h'){
    image(hopen,955,300,267,200);
    fill(#E52E5C);
    textFont(boldFont,48);
    text(hsentences[counter],500, random(0,height));
    counter ++;
    if(counter >= sentences.length) {
      counter = 0;
      background(#FFFFFF);
    }
    
  }
}

//void move() {
//  // Change the x location by speed
//x = x + speed;
//}
////// A function to bounce the ball
////void bounce() {
////  // If we’ve reached an edge, reverse speed
////  if ((x > width) || (x < 0)) {
////   speed = speed * -1;
////  }
////}
//// A function to display the ball
//void display() {
//  stroke(0);
//  fill(175);
//  ellipse(x,100,32,32);
//}
