
String[] sentencesA = {"Bonjour!","Je m'appelle Jacques!","Bienvenue en France","Want a baguette?", "Enjoy!"};
String[] sentencesB = {"Hello!", "My name is Bob.", "Thank you!", "I would love one.", "Merci Jacques!"}; 

PFont boldFontA;
PFont boldFontB;

int counter = 0; //represents how many phrases has been displayed
int sentenceNo = 0; //equal to the position number in sentences[]
int spaceBarNo = 0; //equal to how many times the person presses the space bar

void setup(){ 
  size(1200,700);
  boldFontA = loadFont("BodoniMT-BoldItalic-48.vlw");
  boldFontB = loadFont("CalifornianFB-Bold-48.vlw");
  background(#000000);
  
  personA();
  personB();
}

void draw(){
}

void mousePressed(){
}
  
void keyPressed(){

  if(key == ' ')  //if person presses space bar
  {     
    spaceBarNo++;
    if(spaceBarNo % 2 != 0) //if space bar count is odd
    {
      if (counter==(2*sentencesA.length)){ // if person has reached end of dialogue, clear screen
        counter=0;
        sentenceNo=0;
        spaceBarNo=0;
        background(#000000);
        
        //testNumbers();
        
      }
      else{ //if space bar is even
        if (counter % 2 ==0){  //if counter number is even
           bubbleA(sentenceNo);  //display dialogue A
           
           if(spaceBarNo==17) //if spacebar count is 17, display baguette
            baguette(350,580);

        //testNumbers();
        }
        else {  //if counter number is odd
           bubbleB(sentenceNo);  //display dialogue B
           
           if(spaceBarNo==19) //if space bar count is 19, display baguette
            baguette(850,580);
            
           sentenceNo++; 
            
           //testNumbers();
        }
        counter++;
      }
    }
  else{ //clear dialogue area
    noStroke();
    fill(#000000);
    rect(290,50,620,700);
  }
 }
}

void bubbleA(int sentenceNo){
  //Text 
  fill(#FFFFFF);
  textFont(boldFontA,45);
  textAlign(CENTER, CENTER);
  text(sentencesA[sentenceNo],550,300);
    
  //Bubble      
  noFill();
  stroke(#FFFFFF);
  strokeWeight(5);
  rect(300, 225, 500, 150, 50, 50, 50, 5);
}

void bubbleB(int sentenceNo){
  //Text
  fill(#FFFFFF);
  textFont(boldFontB,43);
  textAlign(CENTER, CENTER);
  text(sentencesB[sentenceNo],650,300);
  
  //Bubble      
  noFill();
  stroke(#FFFFFF);
  strokeWeight(5);
  rect(400, 225, 500, 150, 50, 50, 5, 50);  
}

void personA(){  
  //Head
  noFill();
  stroke(#FFFFFF);
  strokeWeight(5);
  ellipse(width/6, 2*(height/3), 150,150);
  
  //Eyes
  fill(#FFFFFF);
  ellipse((width/6)+40, 2*(height/3)+20, 5,5);
  ellipse((width/6)+15, 2*(height/3)+20, 5,5); 
  
  //Mouth
  strokeWeight(4);
  arc((width/6)+20, 2*(height/3)+40, 10,10, radians(30), radians(180));  
  
  //Beret
  noStroke();
  fill(#FF2C33);
  ellipse(200,390,100,25);
  ellipse(200,375,8,8 );
}

void personB(){
  //Head
  noFill();
  stroke(#FFFFFF);
  strokeWeight(5);
  ellipse(5*(width/6), 2*(height/3), 150,150);

  //Eyes
  fill(#FFFFFF);
  ellipse(((5*width)/6)-40, 2*(height/3)+20, 5,5); //eyes
  ellipse(((5*width)/6)-15, 2*(height/3)+20, 5,5); //eyes
  
  //Mouth
  strokeWeight(4);
  arc(((5*width)/6)-20, 2*(height/3)+40, 10,10, radians(0), radians(150));  
}

void baguette(int x, int y)
{
  fill(#FFF3D1);
  stroke(#E8BC44);
  strokeWeight(5);
  ellipse(x,y,50,200);
  for(int i = 0; i<25 ;i+=5)
   line(x-5,(y-50)+(5*i),x,(y-50)+(5*i));
}

void testNumbers()
{
  println("Sentence # = " + sentenceNo);
  println("Counter # = " + counter);
  println("Space Bar # = " + spaceBarNo);
}
