float colorR;
float colorG;
float colorB;
float backgroundR;
float backgroundG;
float backgroundB;

void setup () {
  size(1200,600);
  background(240,247,246);
  smooth();
}

void draw() {
  rectMode(CENTER);
  
  //variables for randomized colr
  colorR = random(100,255);
  colorG = random(100,255);
  colorB = random(100,255);
  backgroundR = random(0,255);
  backgroundG = random(0,255);
  backgroundB = random(0,255);
  
  if(!(pmouseX==0 && pmouseY==0)) {
    
  //top left (squares)
  if(mouseX<width/2 && mouseY<height/2){
    //stroke(100);
    //strokeWeight(1);
    noStroke();
    fill(colorR,colorG,colorB,(frameCount/6));
    rect(mouseX,mouseY,100,100);
  }
    
  //bottom left (stroke)
  if(mouseX<width/2 && mouseY>height/2){
    float a = constrain((abs(pmouseX-mouseX)),1,20);
    stroke(colorR,colorG,colorB);
    strokeWeight(a);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  
  //bottom right (circles)
  if(mouseX>width/2 && mouseY>height/2){
    noStroke();
    //stroke(255);
    //strokeWeight(3);
    fill(colorR,colorG,colorB,(frameCount/8));
    ellipse(mouseX,mouseY,70,70);
  }
  
  //top right (thin stroke)
  if(mouseX>width/2 && mouseY<height/2){
    stroke(colorR,colorG,colorB);
    strokeWeight(1);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  }
}

void mousePressed() {
//  background(colorR,colorG,colorB);
  background(backgroundR,backgroundG,backgroundB);
}
