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
int[] indexes = new int[sentences.length];
String result = "";
 
void setup() { 
  size(800, 800);
  background(#FF4B94);
  fill(#FFFFFF);
 

 
}
 


 
void draw() {

}
 
void keyPressed() {
  
  if(key == 'c'){
    
  background(#FF4B94);
  result=result.trim();
  text(result, random(0,width), random(0,height), 500,500);
  
  
  
  result="";
  
  if(counter >= sentences.length) {
      counter = 0;
  }

 
  for( int t=0; t<indexes.length; t++ ) {
    indexes[t]=t;
  }
   
  
  for( int t=0; t<indexes.length; t++ ) {
    int r = int(random(indexes.length));
    int temp = indexes[r];
    indexes[r] = indexes[t];
    indexes[t] = temp;
  }
   
  
  for( int i=0; i<sentences.length; i++ ) {
     result = result + " " + sentences[indexes[i]] + ".";
   
  }


}
 




 
  

  }
