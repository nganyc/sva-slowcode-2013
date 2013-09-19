float x;
float y;
float angle;
void setup(){
  size(600,600);
  smooth();
  x=width/2;
  y=height/2;
  background(255);
}

void draw(){
  
  if((mouseX<x)&&(mouseY<y)){
    fill(69,193,183,50);
    stroke(230);
    }
  else if((mouseX<x)&&(mouseY>y)){
    fill(22,204,96,50);
    stroke(230);
    }
  else if((mouseX>x)&&(mouseY<y)){
    fill(42,108,189,50);
     stroke(230);
    }
  else{
    fill(139,205,123,50);
     stroke(230);
  }
  
  translate(mouseX, mouseY);
  rotate(angle);
  rect(-15,-15,50,50);
  angle +=0.1;
}
  
  
