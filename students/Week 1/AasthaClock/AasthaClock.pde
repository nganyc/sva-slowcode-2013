int startY=0;

void setup(){
  
  background(0,0,0);
  size(800,500);
  frameRate(1);

}

void draw() {
  
  int s = second(); 
  float a = (height/60)*s;


  stroke(146, s*2 ,174);
  line(0, a, width, a);
     

}
