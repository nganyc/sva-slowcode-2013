float r;
float b;
float g;
float a; //alpha
float diam;

float ellipesRandomSpread; //set ellipes spread range
float x;
float y;

boolean mouseMovement;

PImage img;

void setup(){
  size(800,600);
  background(255);
  
  noStroke();
  fill(103); //top-left
  rect(0,0,width/2,height/2);
  
  fill(49,188,180); //top-right
  rect(width/2,0,width,height/2);
  
  fill(255,234,0); //bottom-left
  rect(0,height/2,width/2,height);
  
  fill(250,159,141); //bottom-right
  rect(width/2,height/2,width,height);

  mouseMovement = false;
  
  img = loadImage("bee.png");
}

void draw(){
  smooth();
  
  if(pmouseX > 0 || pmouseY > 0) { 
        mouseMovement = true;
      }
    
  if(mouseMovement) {
   if(!mousePressed){
    
    noStroke();
    
    fill(103); //top-left
    rect(0,0,width/2,height/2);
    
    fill(49,188,180); //top-right
    rect(width/2,0,width,height/2);
    
    fill(255,234,0); //bottom-left
    rect(0,height/2,width/2,height);
    
    fill(250,159,141); //bottom-right
    rect(width/2,height/2,width,height);
    
    imageMode(CENTER);
    image(img,mouseX,mouseY,49,42);
    }    
    
    if(mousePressed){  
      
      /* 1. top-left on canvas */
      if(pmouseX<width/2 && pmouseY<height/2){
        r = random(255); 
        g = random(255);
        b = random(255);
        a = random(255);
        diam = random(40);
        
        // ellipes spread around the mouse-press point
        ellipesRandomSpread = 10;
        x = pmouseX + random(-ellipesRandomSpread, ellipesRandomSpread);
        y = pmouseY + random(-ellipesRandomSpread, ellipesRandomSpread);
        
        noStroke();
        fill(r,g,b,a);
        ellipse(x,y,diam,diam);
           }
  
      /* 2. top-right on canvas */ 
      if(mouseX>width/2+60 && pmouseY<height/2-60){
        b = random(255);
        noStroke();
        fill(49,188,b,10); //top-right
        rect(width/2,0,width,height/2);
      
        noFill();
        strokeWeight(1);
        
        diam = 120;
        
        stroke(255,diam);
        ellipse(mouseX,mouseY,80,80);
        
        stroke(255,diam-40);
        ellipse(mouseX,mouseY,40,40);
        
        stroke(255,diam-20);
        ellipse(mouseX,mouseY,20,20);
        
        stroke(255,diam-10);
        ellipse(mouseX,mouseY,5,5);
        }
  
        /* 3. bottom-left on canvas */
       if(mouseX<width/2 && pmouseY>height/2){
         noStroke();
         fill(255,234,0,50); //bottom-left
         rect(0,height/2,width/2,height);
          
         float weight = dist(mouseX, mouseY, pmouseX, pmouseY);
         if(weight<100){
           stroke(0);
           strokeWeight(weight);
           line(mouseX, mouseY, pmouseX, pmouseY);
           }
        }
  
        /* 4. bottom-right on canvas */
        if(mouseX>width/2 && pmouseY>height/2){
         noStroke();
         fill(250,159,141,10); //bottom-right
         rect(width/2,height/2,width,height);
      
         strokeWeight(2);
         stroke(162,75,59);
         line(3*width/4, 3*height/4, mouseX, mouseY); 
        }
    }
  }
}

/* Questions:  
1. How to organize the logic layers of each "if"? 
   Seems I place too much and a little bit chaos.
   I hopes to simplify the codes for clarity.
   
2. How to keep the painting strictly works within the boundry of each quadrants?
3. The effect in the top-right quadrant is not actually what I want.
   I want to discuss about it.
*/
   
