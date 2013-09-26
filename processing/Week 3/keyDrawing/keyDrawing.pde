//Alternate pressing the keys "r" and "p" to read the conversation between Rachel and Phoebe.

PImage rachelImg;
PImage phoebeImg;

String[] rachel = {"OK, ready? Hi.","Rachel","Phoebe's","Leave","I just said Leave","That's not true","No. I have all the good words."};
PFont firstFont;

String[] phoebe = {"It's","And","And","Please","Yeah, that's because you have all the good words.","Let's switch"};
PFont secondFont;

int counter = 0;

void setup(){
  rachelImg = loadImage("rachel.jpg");
  phoebeImg = loadImage("phoebe.jpg");


  size(1300,700);
  firstFont = loadFont("Didot-32.vlw");
  secondFont = loadFont("dialog.vlw");

  background(255,0,0);
  
}

void draw(){
  //background(0);
}

void mousePressed(){
  
}
  
void keyPressed(){
  if(key == 'r'){
    //int randomWord = (int)random(0,words.length);
    
    fill(0,0,255);
    noStroke();
    rect(0,0,width,height/2);
  
    fill(255);
    textFont(firstFont,40);
    text(rachel[counter],random(0,width), random(0,height/2));
    counter ++;
    if(counter >= rachel.length) {
      counter = 0;
      //background(0,0,255);
      image(rachelImg, 0, 0);

    }
  }
  
  if(key == 'p'){
    
    fill(0,255,0);
    noStroke();
    rect(0,height/2,width,height/2);
    
    fill(0);
    textFont(secondFont,40);
    text(phoebe[counter],random(0,width), random(height/2,height));
    counter ++;
    if(counter >= phoebe.length) {
      counter = 0;
      //background(0,255,0);
     image(phoebeImg, width/2, height/2);

  }
}
}
