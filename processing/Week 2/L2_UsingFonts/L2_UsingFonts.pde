
// step 1. go to tools above, and create font
// this creates a font and puts it in the data folder with the name
// at the bottom of the dialog box.

PFont arial;

void setup(){
  size(1000,500);
  // load the font with the filename created in the data folder
  arial = loadFont("ArialNarrow-48.vlw");
}

void draw(){
  background(255);
  
  // you have to set a font like you set a fill with size
  textFont(arial,48);
  
  // set fill of the text, as well as the text and its bottom left position
  // (aligned with the bottom of the text, not the top like images)
  fill(0);
  text("This is the text to display",mouseX,mouseY);
  
}
