


void setup(){
  
  background(#00A3E1);
  size(600,200);
  
  frameRate(60);
  noStroke();
}

void draw(){

  fill(255,second()*2,0);
  rect(0,height/2, second()*2,20);
  
  fill(#00A3E1,5);
  rect(0,random(0,height),width,30);
  
  fill(255,5);
  rect(0,random(0,height),width,10);
  
  fill(#FF5C29,5);
  rect(random(0,width),height-20, 20,20);

  fill(255);
  ellipse(mouseX, mouseY, 15, 15);
  println(second() * 500 / width);
}

