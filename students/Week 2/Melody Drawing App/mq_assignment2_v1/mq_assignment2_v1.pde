
color c1;
color c2;
color c3;
color c4;
color c5;
color c6;
color c7;
color c8;
PFont font;


void setup (){
  size(800,800);
  font = loadFont("MyriadPro-Bold-48.vlw");
  textFont(font,24);
  c1 = color(#FFFF99);
  c2 = color(#FF66B2);
  c3 = color(#99FFFF);
  c4 = color(#FF9933);
  c5 = color(#CC99FF);
  c6 = color(#FFFFFF);
  c7 = color(#99FF33);
  c8 = color(#3399FF);

}

void draw(){
  fill(100);
  stroke(0);
  rect(0,0,width,height);
  
  strokeWeight(3);
  line(width/2, 0, width/2, height);
  strokeWeight(3);
  line(0, height/2, width, height/2);
    
  if(!mousePressed && mouseX<width/2 && mouseY<height/2){
      stroke(c2);
      fill(c1);
      ellipse(mouseX,mouseY+30,60,60);
      fill(c2);
      text("1",mouseX-6,mouseY+36);
    }
    
   if(!mousePressed && mouseX>width/2 && mouseY<height/2){
      stroke(c4); 
      strokeWeight(2);
      fill(c3);
      ellipse(mouseX,mouseY+30,60,60);
      fill(c4);
      text("2",mouseX-6,mouseY+36);
    }
    
   if(!mousePressed && mouseX>width/2 && mouseY>height/2){
      stroke(c6);
      strokeWeight(2);
      fill(c5);
      ellipse(mouseX,mouseY+30,60,60);
      fill(c6);
      text("3",mouseX-6,mouseY+36);
    }
    
   if(!mousePressed && mouseX<width/2 && mouseY>height/2){
      stroke(c8);
      strokeWeight(2);
      fill(c7);
      ellipse(mouseX,mouseY+30,60,60);
      fill(c8);
      text("4",mouseX-6,mouseY+36);
    }
  
  if(mousePressed && mouseX<width/2 && mouseY<height/2){
    fill(c2);
    stroke(c1);
    triangle(pmouseX, pmouseY, pmouseX-25, pmouseY+25, pmouseX+25, pmouseY+25); 
    stroke(0);
  } 
  
    if(mousePressed && mouseX>width/2 && mouseY<height/2){
    fill(c4);
    stroke(c3);
    triangle(pmouseX, pmouseY, pmouseX-25, pmouseY+25, pmouseX+25, pmouseY+25); 
    triangle(pmouseX, pmouseY+50, pmouseX-25, pmouseY+75, pmouseX+25, pmouseY+75); 
    stroke(0);
  } 
  
    
    if(mousePressed && mouseX>width/2 && mouseY>height/2){
    fill(c6);
    stroke(c5);
    triangle(pmouseX, pmouseY, pmouseX-25, pmouseY+25, pmouseX+25, pmouseY+25); 
    triangle(pmouseX, pmouseY+50, pmouseX-25, pmouseY+75, pmouseX+25, pmouseY+75); 
    triangle(pmouseX, pmouseY+100, pmouseX-25, pmouseY+125, pmouseX+25, pmouseY+125);
    stroke(0);
  } 
  
    if(mousePressed && mouseX<width/2 && mouseY>height/2){
    fill(c8);
    stroke(c7);
    triangle(pmouseX, pmouseY, pmouseX-25, pmouseY+25, pmouseX+25, pmouseY+25); 
    triangle(pmouseX, pmouseY+50, pmouseX-25, pmouseY+75, pmouseX+25, pmouseY+75); 
    triangle(pmouseX, pmouseY+100, pmouseX-25, pmouseY+125, pmouseX+25, pmouseY+125);
    triangle(pmouseX, pmouseY+150, pmouseX-25, pmouseY+175, pmouseX+25, pmouseY+175);
    stroke(0);
  } 

  }


