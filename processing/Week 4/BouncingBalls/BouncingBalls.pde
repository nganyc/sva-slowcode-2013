
Ball[] balls = new Ball[50];

boolean createUniform = true;

void setup(){
  size(1200,800);
  smooth();
  
  for(int i=0;i<balls.length;i++){
    balls[i] = new Ball(random(50, width-50), random(0, height-50));
  }
}

void draw(){
  background(255);
  
  if(keyPressed){
    
  }
  
  for(int i=0;i<balls.length;i++){
    balls[i].draw();
  }
}

void mousePressed(){
  for(int i=0;i<balls.length;i++){
    if(createUniform){
      balls[i] = new Ball(i * 25, 25);
    } else {
      balls[i] = new Ball(random(50, width-50), random(0, height-50));
    }
  }
  createUniform = !createUniform;
}
