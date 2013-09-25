
void setup(){
  
  background(#2A2B2A);
  size(60,600);

}

float x = 0;

void draw() {  
  
  int s = second();
  int m = minute();
  int h = hour();
  
  x = s;
  if (x > height) {
    x = 0;
  }
  
background(#2A2B2A); 
  
  stroke(255);
  line(0, 50, width, 50);
  
  stroke(255);
  line(0, 100, width, 100);
  
  stroke(255);
  line(0, 150, width, 150);
  
  stroke(255);
  line(0, 200, width, 200);

  stroke(255);
  line(0, 250, width, 250);

  stroke(255);
  line(0, 300, width, 300);

  stroke(255);
  line(0, 350, width, 350);

  stroke(255);
  line(0, 400, width, 400);

  stroke(255);
  line(0, 450, width, 450);

  stroke(255);
  line(0, 500, width, 500);

  stroke(255);
  line(0, 550, width, 550);

    if (h > 11) {
    h = h-12;
    }
    
  fill(#D63431);
  noStroke();
  rect(0, h*50, 20, 50, 2);
 
  fill(#21A6C9);
  noStroke();
  rect(20, m*10, 20, 10, 1);
  
  fill(#FDBE2B);
  noStroke();
  rect(40, s*10, 20, 10, 1);

}

