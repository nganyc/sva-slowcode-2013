
 String[] sentences = {
 "ㄅ", "ㄆ", "ㄇ","ㄈ","ㄍ","ㄎ","ㄋ","ㄏ","ㄉ","ㄊ","ㄋ","ㄏ",
  "ㄐ","ㄑ","ㄒ","ㄓ","ㄔ","ㄕ","ㄖ","ㄗ","ㄘ","ㄙ","ㄧ",
  "ㄨ","ㄩ","ㄚ","ㄛ","ㄜ","ㄝ","ㄞ","ㄠ","ㄡ","ㄢ","ㄣ","ㄥ","ㄦ",
"1", "2", "3","4","5","6","7","8","9","10","a","b",
  "c","d","e","f","g","h","i","j","k","l","i",
  "m","n","o","v","q","r","s","t","u","v","w","x","z",
};

PFont boldFont;

int counter = 0;


void setup(){
  size(800,800);

  background(#FF4B94);
  
}

void draw(){
  //background(0);
}

void mousePressed(){
  
}
  
void keyPressed(){
  if(keyCode == UP){
    //int randomWord = (int)random(0,words.length);
    fill(255);

    text(sentences[counter],random(0,width), random(0,height));
    counter ++;
    if(counter >= sentences.length) {
      counter = 0;
      background(#FF4B94);
    }
  }
  
  if(key == 'h'){
    
  }
}
