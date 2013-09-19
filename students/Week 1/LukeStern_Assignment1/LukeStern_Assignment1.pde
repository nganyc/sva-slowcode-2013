PImage img;

void setup(){
  
  background(#E884DC);
  size(485,572);

  img = loadImage("flava.jpg");
  image(img, 20, 20);
  
 
}


void draw(){ 
  
  // color and placement of the second rect
  fill(#F73E6C);
  rect(20, 20, map(second(), 0,59, 0, width-40), 20);
  
  // color and placement of the minute
  fill(#3EF7EB);
  rect(20, 40, 20, map(minute(), 0,59, height-60, 20) );
  
  
  // color and placement of the hour
  fill(#40F543);
  rect(445, 40, 20, map(hour(), 0,23, height-60, 20) );
  
}
