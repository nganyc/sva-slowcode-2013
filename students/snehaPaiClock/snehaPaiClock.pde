void setup(){
  
  background(#906767);
  size(900,600); 
  noStroke();
}

void draw () {
  background(#906767);
  
 //white eye socket (in minutes)
  fill(255);
  ellipse (300, height/3, map(minute(), 0,59, 0, width/3*2), height/2); 
   
   fill(255);
   ellipse (600, height/3, map(minute(), 0,59, 0, width/3*2), height/2); 
   
//the iris parts (in seconds)

 fill(125,100,165,191);
 ellipse(width/3, height/3, map(second(), 0,59, 0, 250), map(second(), 0,59, 0, 250)); 
 
 
 fill(125,100,165,191);
 ellipse(width/3*2, height/3, map(second(), 0,59, 0, 250), map(second(), 0,59, 0, 250)); 
 
//the smile part ( in seconds)
 fill (250, second()*2, 0);
 rect (1, height/3*2, map(second(), 0,59, 0, width), height/3);
 

  
  

}
