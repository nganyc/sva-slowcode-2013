// This process runs through a short clip using videos and text. 
// I used a scene from family guy and removed the text and cut up the video
// In order to view the scene how it was intended to be viewed, the mouse keys should be clicked in order from 1 to 9, then q to e


import processing.video.*;
Movie scene1,scene2,scene3,scene4,scene5,scene6,scene7,scene8,scene9,scene10,scene11,end;
String[] words = {"D","OT","DOT","B","ET","P", "PIT", "F", "AT"};
PFont boldFont;
int counter = 0;

boolean isPlaying;
boolean[] movieState;

void setup(){
  size(800,360);
  boldFont = loadFont("Gotham-Medium-48.vlw");
  PImage img;
  img = loadImage("background.jpg");
  background(img);
  scene1 = new Movie(this, "scene1.mp4"); 
  scene2 = new Movie(this, "scene2.mp4"); 
  scene3 = new Movie(this, "scene3.mp4"); 
  scene4 = new Movie(this, "scene4.mp4"); 
  scene5 = new Movie(this, "scene5.mp4"); 
  scene6 = new Movie(this, "scene6.mp4"); 
  scene7 = new Movie(this, "scene7.mp4"); 
  scene8 = new Movie(this, "scene8.mp4"); 
  scene9 = new Movie(this, "scene9.mp4"); 
  scene10 = new Movie(this, "scene10.mp4"); 
  scene11 = new Movie(this, "scene11.mp4"); 
  end = new Movie(this, "end.mp4"); 
 // myMovie.loop();
 // myMovie.play();

}


void draw(){
image(scene1, 0, 0);
image(scene2, 600,0);
image(scene3, 1000,1000);
image(scene4, 0,0);
image(scene5, 600,0);
image(scene6, 1000,1000);
image(scene7, 0,0);
image(scene8, 600,0);
image(scene9, 1000,1000);
image(scene10, 0,0);
image(scene11, 600,0);
image(end, 0,0);
}



  
void keyPressed() {
  if (key == '1'){
  if (!isPlaying) {scene1.play();}
  isPlaying = !isPlaying;
  textFont(boldFont,50);
  text (words[0],350,200);
  }
  
  if (key == '2'){
  scene2.play();
  textFont(boldFont,50);
  text (words[1],389,200);
  }
  
   if (key == '3'){
   scene3.play();
   fill(#19b1fd);
   noStroke();
   rect(300, 100, 200, 200);
   }
  
   if (key == '4')
   {
   //  if (isPlaying) {scene4.play();}
   //  isPlaying = !isPlaying; 
    scene4.play();
    textFont(boldFont,50);
    fill(#ffffff);
    text (words[3],350,198);
    }
  
   if (key == '5')
    {
    // if (!isPlaying) {scene5.play();}
    // isPlaying = !isPlaying; 
    scene5.play();
    textFont(boldFont,50);
    text (words[4],385,198);
    }

    if (key == '6')
    {
    // if (isPlaying) {scene6.play();}
    // isPlaying = !isPlaying; 
    scene6.play();
   fill(#19b1fd);
   noStroke();
   rect(300, 100, 200, 200);
    }
    
      if (key == '7'){
  // if (!isPlaying) {scene7.play();}
  // isPlaying = !isPlaying;
    scene7.play();
  textFont(boldFont,50);
   fill(#ffffff);
  text (words[5],389,200);

  }
  
  if (key == '8'){
  scene8.play();
  textFont(boldFont,50);
  text (words[6],389,200);
  }
  
   if (key == '9'){
   scene9.play();
   fill(#19b1fd);
   noStroke();
   rect(300, 100, 200, 200);
   }
  
   if (key == 'q')
   {
   //  if (isPlaying) {scene4.play();}
   //  isPlaying = !isPlaying; 
    scene10.play();
    textFont(boldFont,50);
    fill(#ffffff);
    text (words[7],350,198);
    }
  
   if (key == 'w')
    {
    // if (!isPlaying) {scene5.play();}
    // isPlaying = !isPlaying; 
    scene11.play();
    textFont(boldFont,50);
    text (words[8],385,198);
    }

    if (key == 'e')
    {
    //if (isPlaying) {scene6.play();}
    // isPlaying = !isPlaying; 
    end.play();
    fill(#19b1fd);
    noStroke();
    rect(300, 100, 200, 200);
    }



  }
  
 // Called every time a new frame is available to read
void movieEvent(Movie m) {
  scene1.read();
  scene2.read();
  scene3.read();
  scene4.read();
  scene5.read();
  scene6.read();
  scene7.read();
  scene8.read();
  scene9.read();
  scene10.read();
  scene11.read();
  end.read();
}

