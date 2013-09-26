
String[] sentences={
  "Sam, you talk a lot !",
  "It's a family tradition.",
  "What do you mean?",
  "Sir, my grandpa was a street hawker,my father is a teacher.",
  "What about your mother?",
  "She's a woman."};
 PFont f;
 int counter=0;
 
 void setup(){
   size(800,600);
   f=loadFont("AgencyFB-Bold-36.vlw");
   background(0);
 }
   
   void draw(){
   }
   
   void mousePressed(){
     
     
       fill(255);
       textFont(f,36);

        if(counter%2==0){
         fill(220,60,150);
         textAlign(LEFT);
         text(sentences[counter],width/10,(100+counter*70));
       }
       else if(counter%2==1){
         fill(255);
         textAlign(RIGHT);
         text(sentences[counter],width*9/10,(100+counter*70));
       }
       counter ++;
       if(counter >sentences.length){
         counter=0;
         background(0);
       }
    


     }


