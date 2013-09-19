void setup(){
  
  size(300, 300);        //set background
  
}

void draw(){
  
  background(255,218,5);
  
  noFill();
  stroke(255);
  ellipse(width/2,height/2,200,200);
  stroke(188);
  ellipse(width/2,height/2,120,120);
  stroke(0);
  ellipse(width/2,height/2,80,80);
  
  noStroke();
  fill(255);
  ellipse(width/2,(height/2-100)/2,10,10); // draw a point on top
  
  int x = width/2;       // set the centre of the circles
  int y = height/2; 
  
  int h = hour();        // set the time variables
  int m = minute();
  int s = second();
  
  smooth();
  noStroke();
  
  fill(255);
  arc(x, y, 200, 200, radians(-90), radians(map(h,0,23,-90,270))); //draw the Hour circle
  
  fill(188);
  arc(x, y, 120, 120, radians(-90), radians(map(m,0,59,-90,270)));  //draw the Minute circle
  
  fill(0);
  arc(x, y, 80, 80, radians(-90), radians(map(s,0,59,-90,270)));    //draw the Second circle
  
  println(hour());
  println(minute());
  println(second());

}

/* 

   PROBLEMS SOLVED:
   1. Not sure about what the map() means and how to set each of the Parameters in this case;
    * Radians function covert degrees into another form of measuring angles,
    and covert the map to scale numbers into radians. 
   
   2. When second() back to 0 when finishing a circle, 
      (1)the drawing cannot refresh to draw a new circle from the biginning,
         it keep layering on the existing drawing which remains a solid color;
      (2)the layer order of the 3 circles has bugs which I've no idea why;
   
   3. If I change the opacity of each circle, some bugs happen (about the layer order);
    * Drop a background function at the beginning of draw loop
      to keep refreshing when re-render each time
*/
