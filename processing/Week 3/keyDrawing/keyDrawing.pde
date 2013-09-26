
String[] sentences = {"hello there.","welcome to SVA.","how are you?","why are you here, ribbit.?!","beans are magical"};
PFont boldFont;

int counter = 0;

void setup(){
  size(1200,800);
  boldFont = loadFont("dialog.vlw");
  background(80);
  
}

void draw(){
  //background(0);
}

void mousePressed(){
  
}
  
void keyPressed(){
  if(key == 'g'){
    //int randomWord = (int)random(0,words.length);
    fill(255);
    textFont(boldFont,48);
    text(sentences[counter],random(0,width), random(0,height));
    counter ++;
    if(counter >= sentences.length) {
      counter = 0;
      background(80);
    }
  }
  
  if(key == 'h'){
    
  }
}
