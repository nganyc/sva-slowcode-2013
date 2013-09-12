void setup(){
  
  background(#000000);
  size(1000,700);
  frameRate(1);
}

void draw(){
  
  //draw bomb
  
  background(#000000);
  fill(#000000);
  stroke(#FFFFFF);
  strokeWeight(4);
 
  ellipse(500,503,200,200); 
  arc(500, 503, 180, 180, radians(285), radians(325));
 
  //bomb countdown
 
  for(int i = 220; i<400; i+=3){
    
    fill(#FF3636);
    noStroke();
  
    rect(500,i,5,2);
  }
 
  if(second()!=0){
   
    fill(#000000);
    rect(500, 220, 5, second()*3);
    
  }
  else{
    
    //when minute is up, background flashes red
    
    background(#FF3636);
  
 }    
}
