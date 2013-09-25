void setup(){
  size(600,600);
  
  //loop();
 }

 void draw(){
  background(255);
  
  float i;
  i=map(minute(),0,59,0,2);
  stroke(249,157,28);
  strokeWeight(8.0);
  strokeCap(ROUND);
  noFill();
  arc(width*0.5,height*0.5,146,146,-PI/2,i*PI-PI/2);
  
 
  float h;
  if(hour()>=12)
  {
  h=map(hour()-12,0,24,0,2);
  }
  else
  {
  h=map(hour(),0,24,0,2);
  }
  stroke(102,51,153);
  strokeWeight(16);
  strokeCap(ROUND);
  noFill();
  arc(width*0.5,height*0.5,200,200,-PI/2,h*PI-PI/2);
  
   
  float s;
  s=map(second( ),0,59,0,120);
  if(second()>58)
  {s=0;}
  noStroke();
  ellipseMode(CENTER);
  fill(239,65,61);
  ellipse(width*0.5,height*0.5,s,s);
  
  println(second());
 
 }

  
 

 
 



