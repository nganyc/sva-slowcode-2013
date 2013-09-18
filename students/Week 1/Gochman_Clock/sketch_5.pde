  PImage bg;
  PImage bg2;

  
void setup(){
  

  size(1200,800);
  bg = loadImage("background.jpg");
  bg2 = loadImage("background2.jpg");


  frameRate(1);
  background(bg);
}

void draw() {
  

  if (second()==0)
  
  { 

  background (bg2);
    
  }
  
  color msStroke = color(#F0FF7E);
  color sStroke = color(#FF7E7E);
  color mStroke = color(#FFFFFF);
  color hStroke = color(#7ED7FF);
  
  int ms = millis();
  int s = second();  
  int m = minute();  
  int h = hour();  
  int w = int(random (0,800));
  int x = int(random (0,800));
  int y = int(random (0,800));
  int z = int(random (0,800));
   
  
 stroke(msStroke);
 noFill();
 ellipse(x,y,ms % 100,ms % 100);

  noFill();
  stroke(sStroke);
  ellipse(x,y,s * 2,s * 2);
  
  stroke(mStroke);
  ellipse(x,y,m * 2,m * 2);
  
  stroke(hStroke);
  ellipse(x,y,h * 2,h * 2);
  
}


