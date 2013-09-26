
String[] dialogueA = {"make me sandwich","300","I'll give you this shiny thing","you sure?"};
String[] dialogueB = {"how many sandwiches?","why should I?","deal!","of course!"};
PFont boldFont;
int i;
int j;

void setup(){
  size(1200,800);
  boldFont = loadFont("dialog.vlw");
  background(204);
}

void draw(){
}

void keyPressed(){

  if(key == 'a'){
    talkingHead(110, 110);
    fill(255);
    textFont(boldFont,48);
    text(dialogueA[i], random(width), random(height/2));
    i++;
      if(i == dialogueA.length) {
      i = 0;
  }
    }
  
  
  if(key == 'l'){
    talkingHead(1020, 110);
    fill(255);
    textFont(boldFont,48);
    text(dialogueB[j], random(width), random(height));
    j++;
      if(j == dialogueB.length) {
      j = 0;
    }   
}
}
void mousePressed(){
  background(204);
  i=0;
  j=0;

  }
void talkingHead(int x, int y) {
pushMatrix();
translate(x, y);
stroke(0);
strokeWeight(70);
line(0, -35, 0, -65); // Body
noStroke();
fill(0, 0, 255);
arc(0, -65, 70, 70, 0, PI); // Chin
fill(0);
ellipse(-14, -65, 20, 20); // Left eye
ellipse(14, -65, 20, 20); // Right eye
ellipse(0, -48, 10, 10); //mouth
fill(255);
ellipse(-15, -65, 10, 10); // Left eyeball
ellipse(15, -65, 10, 10); // Right eyeball
popMatrix();
}
