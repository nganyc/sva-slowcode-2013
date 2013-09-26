String[] puncs = {"a!","b?","?!","#$%","...","~"};
PFont boldFont;

int h1 = 120;
int h2 = 240;

void setup() {
  size(1200, 800);
  boldFont = loadFont("dialog.vlw");
  background(80);
//  f = createFont("Arial", 16, true); //Font is arial, size is 16, anti-aliasing on
}

void draw() {
}


void keyPressed() {
  if (key == 'a') {
    int randomPunc = (int)random(0,puncs.length);
    fill(255);
    textFont(boldFont,48);
//    background(255);
    text(puncs[randomPunc], width/4, h1);
    h1 += 120;
//    background(80);
    
    if(h1 >= height) {
      h1 = 120;
      background(80);
    }
  }
  
  if (key == 'b') {
  int randomPunc = (int)random(0,puncs.length);
  fill(255);
  textFont(boldFont,48);
//    background(255);
  text(puncs[randomPunc], width*3/4, h2);
  h2 += 120;
  if(h2 >= height) {
    h2 = 120;
    background(80);
  }
}

}


