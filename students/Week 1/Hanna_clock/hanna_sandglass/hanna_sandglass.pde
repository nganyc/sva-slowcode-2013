//Sadnglass : It takes 60 second for orange rect to get down, and  blue sand will uprise per minute.
void setup(){

  background(235, 250, 245);
  size(401, 601);
  smooth();
  
}

void draw() {

  fill(0);
  stroke(0);
  strokeWeight(8);
  rect(width/6-30, 20, width/6*4+60, 20); // top, long rect
  rect(width/6-30, height-40, width/6*4+60, 20); // bottom, long rect
  
  fill(247,247,37);
  rect(width/6-15, 40, width/6*4+30, 40); // top, short rect
  rect(width/6-15, height-80, width/6*4+30, 40); // bottom, short rect
  
  
  noFill();
  strokeWeight(8);
  int i=height-80;
  line(width/6,80,width/6*5, 80);
  bezier(width/6,80, width/6, 120, width/6, 220, 180, 300);
  bezier(width/6*5, 80, width/6*5, 120, width/6*5, 220, 220, 300);
  line(width/6, i, width/6*5, i);
  bezier(width/6, i, width/6, i-40, width/6, 380, 180, 300);
  bezier(width/6*5, i, width/6*5, i-40, width/6*5, 380, 220, 300);
  
  // top, bottom shape of sandglass useing bezier curve




  noStroke();
  int s = second();  
  int m = minute(); 

  fill(148, 220, 222, 100); 
  quad(width/6+75, 250, (width/6)*5-75,250, (width/6)*5-110, 290, width/6+110,290);// upper
  quad(width/6+10+(0.2*m),height-90-m*1.5, (width/6)*5-10-(0.2*m), height-90-m*1.5, (width/6)*5-10, height-90, width/6+10, height-90);

  fill(148, 220, 222,100);
  rect(195, 290, 10, 220);
  // sand in the sandglass
  
  
  fill(255,70,3);
  rect(195, map(s, 0, 59, 300, height-100), 10, 10 );
  // oragne rect timer, which takes 60s to get down

  noFill();
  strokeWeight(8);
  stroke(0);
  beginShape();
  bezier(width/6+30,100, width/6+30, 120, width/6+30, 220, 180+10, 280);
  bezier(width/6+50, 100, width/6+50, 120, width/6+80, 220, 180+10, 280);
  line(width/6+30,100,width/6+50, 100); 
  endShape(CLOSE);

   beginShape();
   bezier(width/6+30,height-100, width/6+30, height-120, width/6+30, 380, 180+10, 320);
   bezier(width/6+50, height-100, width/6+50, height-120, width/6+80, 380, 180+10, 320);
   line(width/6+30,height-100,width/6+50,height-100); 
   endShape(CLOSE);
   //Highlight
   //*question ? : How can I close the shape? would like to fill the shape.... !

}

