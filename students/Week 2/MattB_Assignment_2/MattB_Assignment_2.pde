
void setup(){
  
  size(700,700);
  smooth();
}

void draw(){
 
if(!(pmouseX== 0 && pmouseY == 0))  { 
 
  
  int s = 5; 
  int m = 15;
  int l = 30;
  int xl = 50;
  
  
  
  if(!mousePressed) line(pmouseX,pmouseY,mouseX,mouseY);
   fill(255);
   strokeWeight(1);
   
  if ((mouseX>width/2)&&(mouseY>height/2)){
  fill(255);
  strokeWeight(1);
    ellipse(mouseX,mouseY, l,l);
  }
  
  else if ((mouseX < width/2)&&(mouseY>width/2)){
  fill(255);  
    ellipse(mouseX,mouseY, m,m);
  }
 
  else if ((mouseX < width/2)&&(mouseY<width/2)){
  fill(255);  
    ellipse(mouseX,mouseY, s,s);
  }  
  else {ellipse(mouseX,mouseY, xl,xl);} 
  
}

}
