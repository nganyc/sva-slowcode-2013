boolean click;
int funky = 100;
int jazzy = 30;
int sexy = 60;
int sassy = 50;

void setup(){
 size(1000,1000);
 smooth();
 
}

void draw(){

  fill(#d15454);
  noStroke();
  rect(0,0,width/2,height/2);
  
  fill(#54d1d1);
  noStroke();
  rect(width/2,height/2,width/2,height/2);
  
  fill(#7dd154);
  noStroke();
  rect(width/2,0,width/2,height/2);
  
  fill(#d1d154);
  noStroke();
  rect(0,height/2,width/2,height/2);

  if(mouseX > width/2){
    fill(255);
    ellipse(mouseX, mouseY, funky,funky);
      } else {
    fill(255);
    rect(mouseX, mouseY, jazzy,jazzy);
      }

  if(mouseY > height/2){
    fill(255);
    ellipse(mouseX, mouseY, sexy,sexy);
      } else {
    fill(255);
    rect(mouseX, mouseY, sassy,sassy);
      }
}
