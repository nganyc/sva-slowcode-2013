String[] charlie = {"I'm hungry.", "I want a ka-bab.", "And then I want to dance."};
String[] snoopy = {"Do I look like I care?", "No, seriously. I'm a dog. I can't understand you.", "I hate you."};
PFont f;

int counterC = 0;
int counterS = 0;

PImage c;
PImage s;

void setup() {
  size(1200, 800);
  smooth();
  background(255);
  
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  c = loadImage("charlie.jpg");
  s = loadImage("snoopy.jpg");
  
  fill(150);
  textFont(f, 12);       
  textAlign(CENTER);
  text("Press the C & S keys to toggle between the conversation", 600, 675);
}

void draw() {
  image(c, 650, 300); //loads the image, x, y
  image(s, 350, 390); //loads the image, x, y
}

void keyPressed() {
  if(key == 'c'){
    fill(80);
    background(255);
    textFont(f, 18); //calls the font
    textAlign(CENTER); //sets the text allignment
    text(charlie [counterC],760,250);
    counterC ++;
    
   } else {
      if(key == 's') {
        fill(80);
        background(255);
        textFont(f, 18);
        textAlign(CENTER);
        text(snoopy [counterS], 425, 250);
        counterS ++;
        
      if(counterC >= charlie.length || counterS >= snoopy.length) {
      counterC = 0;
      counterS = 0;
      }
    }
  }
}
