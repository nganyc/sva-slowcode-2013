int a = 50;
float b = random(20);


void setup(){

  //background size and anti-aliasing
  size(1000,800);
  smooth();
 


  
}

void draw(){

// if(!mousePressed  
 
//background color override

 fill(200,0);
  noStroke();
  rect(0,0,width,height);
  if(mousePressed) 
  fill(random(255), random(255), random(240), 20);
  rect(0,0,width,height);
 
 
//quadrant upper left


if(mouseX < width/2 && mouseY < height/2){
 
  strokeWeight(1);
  
  fill(random(200),random(50), random(50), random(200));
  if(!mousePressed)  triangle(mouseX-random(150), mouseY+random(100), mouseX+random(100), mouseY+random(100), mouseX-random(80), mouseY+random(80));}
  
  
//quadrant lower left



if(mouseX <width/2 && mouseY > height/2){
 
  strokeWeight(40);
  stroke(second()/2, second()+b, second()-5, 100);
  fill(0,255,0);
  if(!mousePressed)  line(pmouseX,pmouseY,mouseX,mouseY);}


  

//quadrant lower right

if(mouseX > height/2 && mouseY > width/2){
  
  strokeWeight(random(15));
  stroke(random(255), a, random(200), 25);
//  fill(second(),second(),second(), 100);
  if(!mousePressed)  line(pmouseX,pmouseY,mouseX,mouseY);}
  

//quadrant upper right


if(mouseX > width/2 && mouseY < height/2){
  

  
  strokeWeight(1);
  stroke(second()*2, second()*3, 30, 100);
  fill(255,255, 0, second());
  
  if(!mousePressed)  ellipse(mouseX,mouseY, 20,20);}}
