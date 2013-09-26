
String[] horseEbooks = {
"I have personally used this technique to break many memory",
"AND BURNED BY UNSCRUPULOUS BUSINESSES MORE TIMES","breath, and vice versa. How many of the common things I and others thought we were doing",
"and more! Start raising your self-esteem today!","Not only that, but whether you believe it (or want to believe it) the car salesmen will continue to laugh",
"Including simplified four part arrangements for the novice student and",
"Novice and seasoned tomato growers alike find this section invaluable, as it contains everything you",
"a friend that people will want to hang out with rather than be forgotten about thanks to some very powerful techniques."
};

String[] reinManRacing = {
"Spencer rides that fine line between lucky and brilliant. Thought Addictive Dream had it...",
"Look out for likes of Silver Eagle, Net Work Rouge, Twelve Roses and a certain Harry Topper",
"He's only gone and done it again. Bondi Beach Boy, the Hunt Ball of the flat",
"No Nay Never is a beast. Rizeena has run respectably again, looks a solid prospect as she matures. Nuts done on Vorda",
"The wide draw battle that, incidentally, sky lantern will win. Beat her once and a bigger price. Don't doubt the obvious",
"As much as the wallet wanted Simenon, thrilled for Estimate and the lady in purple. History made",
"2013. The year of the draw bias revolt",
"Producer continues to get hammered on the machine. 100% record here over 7"
};

//String horseSnippet = horseEbooks.substring(0,5);
//String reinSnippet = reinManRacing.substring(0,5);

PFont boldFont;
int counter = 0;
PImage img1;
PImage img2;

void setup(){
  
  size(1200,700);
  boldFont = loadFont("RBNo2-Light-28.vlw");
  background(80);
  
  // initial top bar
  
  noStroke();
  fill(50);
  rect(0,0,width,125);
  
  img1 = loadImage("horse_ebooks.png");
  image(img1,width/4-55,7,109,109);
  img2 = loadImage("ReinManRacing.png");
  image(img2,(width/4*3)-55,7,109,109);

}

void draw(){ 
  
}
  
void keyPressed(){
  if(key == 'h'){
    
    float hWidth = random(50,width/2-340);
    float hHeight = random(170,height-200);

    //int randomWord = (int)random(0,words.length);
    
    background(80);
    
    // black hightlight for horse_ebooks
    
    noStroke();
    fill(10);
    rect(0,0,width/2,125);
    fill(50);
    rect(width/2,0,width,125);
    
    // line connecting to tweet
    
    stroke(255);
    line((width/4),100,hWidth+20,hHeight-20);
    
    // avatars
    
    img1 = loadImage("horse_ebooks.png");
    image(img1,width/4-55,7,109,109);
    img2 = loadImage("ReinManRacing.png");
    image(img2,(width/4*3)-55,7,109,109);
    
    // box for text
    
    stroke(0);
    fill(10);
    rect(hWidth-20,hHeight-20,340,170);

    // tweet text

    fill(215,245,115);
    textFont(boldFont,28);
    text("@horse_ebooks:" + " " + horseEbooks[counter], hWidth, hHeight, 300, 300);
    counter ++;
    
    if(counter >= horseEbooks.length) {
      counter = 0;
    }
  }
  
  if(key == 'r'){
    
//    int randomWord = (int)random(0,words.length);

    float rWidth = random(width/2+50,width-340);
    float rHeight = random(170,height-200);
    
    background(80);
  
    // black hightlight for ReinManRacing  
  
    noStroke();
    fill(50);
    rect(0,0,width/2,125);
    fill(10);
    rect(width/2,0,width,125);
    
    // line connecting to tweet
    
    stroke(255);
    line((width/4*3),100,rWidth+20,rHeight-20);
    
    // avatars
    
    img1 = loadImage("horse_ebooks.png");
    image(img1,width/4-55,7,109,109);
    img2 = loadImage("ReinManRacing.png");
    image(img2,(width/4*3)-55,7,109,109);
    
    // box for text
    
    stroke(0);
    fill(10);
    rect(rWidth-20,rHeight-20,340,170);
    
    // tweet text
    
    fill(255,150,100);
    textFont(boldFont,28);
    text("@ReinManRacing:" + " " + reinManRacing[counter], rWidth, rHeight, 300, 300);
    counter ++;
 
    if(counter >= reinManRacing.length) {
      counter = 0;
    }
  }
  
    if(key == ' '){
    
//    int randomWord = (int)random(0,horseEbooks.length);

    float sWidth = random(50,width-340);
    float sHeight = random(170,height-200);
    
    background(80);
  
    // black hightlight for both  
  
    noStroke();
    fill(10);
    rect(0,0,width,125);
    
    // lines connecting to tweet
    
    stroke(255);
    line((width/4*3),100,sWidth+20,sHeight-20);
    line((width/4),100,sWidth+20,sHeight-20);
    
    // avatars
    
    img1 = loadImage("horse_ebooks.png");
    image(img1,width/4-55,7,109,109);
    img2 = loadImage("ReinManRacing.png");
    image(img2,(width/4*3)-55,7,109,109);
    
    // box for text
    
    stroke(0);
    fill(10);
    rect(sWidth-20,sHeight-20,340,225);
    
    // tweet text  
    
    float rCounterFloat1 = random(0,7);
    float rCounterFloat2 = random(0,7);
    int rCounter1 = int(rCounterFloat1);
    int rCounter2 = int(rCounterFloat2);
    
    fill(200);
    textFont(boldFont,28);
    text("@ReinMan_ebooks:" + " " + horseEbooks[rCounter1] + " " + reinManRacing[rCounter2], sWidth, sHeight, 300, 400);

    rCounter1 ++;
    rCounter2 ++;
     
//    if(rCounter >= 7) {
//    rCounter = 0;
//    }
  }  
}
