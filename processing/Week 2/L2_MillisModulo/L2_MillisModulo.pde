

void setup(){
  size(500,500);  
}

void draw(){
  
  background(0);
  float diameter = map(millis() % 1000, 0, 999, 50, 200); 
  if(millis() % 1000 < 500){
    fill(255);
  } else {
    fill(255,0,0);
  }
  ellipse(width/2, height/2, diameter, diameter);
  
  println( millis() % 1000 );

  
}
