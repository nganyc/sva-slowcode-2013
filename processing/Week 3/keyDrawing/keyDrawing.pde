

String[] puncs = {"a!","b?","?!","#$%","...","~"};
PFont boldFont;

int h1 = 120;
int h2 = 240;

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
  if(key == 'a'){
  int randomPunc = (int)random(0,puncs.length);
    fill(255);
    textFont(boldFont,48);
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


/* additive operation within 10 */

//void setup(){
//define a background divided into upper part and lower part, and in different colors
//define a font for string and number display

//define an int array numberPool from 0 to 10
//}

//void draw(){
//1. get 2 random numbers a and b from the array numberPool

//2. display string "What is" + a + "+" + b + "?"
//}

//void keyPressed(){

//3. wait for the user input; user input a number

//value comparison

//4. if user input == a+b, then display string "Correct!"
//and back to step 1

//5. if user input != a+b, then display string "Incorrect:( Try again!"
//and back to step 3
//}

//problems to be solved: 
//1. What if the user input is not a number, eg. a character or a punctuation?
//2. What if the user input a number that is 100000000000? 
