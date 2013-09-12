

void setup(){
  size(500,500); 
  noStroke();
}

void draw(){ 
  background(0);
  
  // color and placement of the hour
  fill(255);
  rect(0,0, map(hour(), 0,23, 0, width), height/3);
  
  // color and placement of the minute
  fill(150);
  // 0, height/3 sets the top left corner of this rect a third of the way down the screen
  rect(0,height/3, map(minute(), 0,59, 0,width), height/3);
  
  // color and placement of the second rect
  fill(255, 10,10);
  // since height/3 puts you a third of the way down, (height/3) *2 puts you 2/3 of the way down
  rect(0, (height/3)*2, map(second(), 0,59, 0, width), height/3);
  
}
