

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


/* additive operation within 10 */

//void setup(){
//define a background divided into upper part and lower part, and in different colors
//define a font for string and number display

//define an int array numberPool from 0 to 10
//}

//void draw(){
//1. get 2 random numbers a and b from the array numberPool

//2. display string "What is" + a + "+" + b + "?"
}

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
