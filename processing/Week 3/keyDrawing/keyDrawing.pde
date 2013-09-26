

String[] whitesentences = {"GREAT START MAKES GREAT FINISH","GOOD THINGS COME IN SMALL PACKAGES","ALL GOOD THINGS COME TO THOSE WHO WAIT",
"HE WHO HESITATES IS LOST","WISE MEN THINK ALIKE", "THE PEN IS MIGHTIER THAN THE SWORD"};
String[] blacksentences = {"IT AIN'T OVER 'TILL IT'S OVER", "THE BIGGER THE BETTER", "TIME AND TIDE WAIT FOR NO MAN",
"LOOK BEFORE YOU LEAP", "FOOLS SELDOM DIFFER", "ACTIONS SPEAK LOUDER THAN WORDS"};
String[] arrow ={"Press left", "Press right"};

PFont frank;

int counter = 0;
int counter2 = 0;

void setup(){
  size(800,600);
  frank = loadFont("FranklinGothic-DemiCond-48.vlw");
  background(0,10);
 textAlign(CENTER, CENTER);
  text("Press left arrow to start, and navigate with arrows", width/2, height/2 + 40);
 
    textFont(frank,45);
     textAlign(CENTER, CENTER);

  text("Match the contrary proverbs", width/2, height/2);
  textFont(frank,20);
     textAlign(CENTER, CENTER);

  
  if(keyPressed) { 
  fill(0);
  noStroke();
  rect(0, 0, width/2, height);
  fill(255);
  noStroke();
  rect(width/2, 0, width/2, height);
  }
}

void draw(){
  

}
  
void keyPressed(){
  if(keyCode == LEFT){
  fill(0);
  noStroke();
  rect(0, 0, width/2, height);
    fill(255);
  noStroke();
  rect(width/2, 0, width/2, height);
    fill(255);
    textFont(frank,45);
     textAlign(CENTER, CENTER);
    text(whitesentences[counter], width/8, height/9 - 60, 200, height);
    counter ++;
    
    if(counter >= whitesentences.length) {
      counter = 0;
      
    }
  }
  
  if(keyCode == RIGHT){
   fill(255);
  noStroke();
  rect(width/2, 0, width/2, height);
    fill(0);
    textFont(frank,45);
     textAlign(CENTER, CENTER);
    text(blacksentences[counter2], width/8*5, height/9- 60, 200, height);
    counter2 ++;
    if(counter2 >= blacksentences.length) {
      counter2 = 0;
      
    }
  }
}

