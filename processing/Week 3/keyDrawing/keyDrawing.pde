

String[] siri = {"how can I help you?","Sneha, or that's what you told me anyway","Humans have spiritualism. I have siliconism","I don’t see any meetings about ‘the world'","I hope you don't say that to those other mobile phones", "In the cloud, no one cares what you look like", "In the cloud, no one cares what you look like"};
String[] user = {" What's my name?","Do you believe in God?","When is the world ending?","I love you","What do you look like?", "hi Siri", "hi Siri"};
PFont siriFont;
PFont userFont;


int counter = 0;

void setup(){
  size(1200,800);
  siriFont = loadFont("Archer-Book-30.vlw");
  userFont = loadFont("nevis.vlw");
  background(second(), second(), second());
  
}

void draw(){
  //background(0);
}


void keyPressed(){
  if(key == 's'){
    //int randomWord = (int)random(0,words.length);
    fill(255);
    textFont(siriFont,30);
    text(siri[counter],200, random(100,500));
    counter ++;
    if(counter >= siri.length) {
      counter = 0;
      background(second(), second(), second());
    }
  }
  
  if(key == 'a'){
    
     //int randomWord = (int)random(0,words.length);
    fill(255);
    textFont(userFont,30);
    text(user[counter],600,random(400,800));
    counter ++;
    if(counter >= user.length) {
      counter = 0;
      background(second(), second(), second());
    }
    
  }
}
