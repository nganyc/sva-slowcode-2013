PFont font;
color c1;
color c2;
String [] greetings = {"Dad, I'm hungry.", "Hi Hungry, I'm Dad.", "Dad, I'm serious.", "No, you're Hungry.", "You're joking!", "No, I'm Dad."};


void setup(){
    size(1200,600);
   
    font = loadFont("LucidaSans-48.vlw");
    fill(100);
    textFont(font);
    textSize(24); 
    text("Press numbers 1 through 6 on your keyboard.",width/8,height/2);
   
    smooth();
   
    c1 = color(0,150,150);
    c2 = color(0);
 

}

void draw(){

}

void keyPressed(){
  
  switch (key) {   
    case '1':
  
  background(c2);
  
  //kid's face
  ellipseMode(CENTER);
  fill(c1);
  ellipse(300,400, 200,200);
  
  //kid's left eye
  ellipseMode(CENTER);
  fill(c2);
  ellipse(285,400, 15,15);

  
  //kid's right eye
  ellipseMode(CENTER);
  fill(c2);
  ellipse(315,400, 15,15);

  
  //kid's mouth
  stroke(c2);
  strokeWeight(5);
  line(275,457,325,450);
  
  //kid's mouth
  stroke(c2);
  strokeWeight(5);
  line(275,457,325,450);

  //text
  fill(c1);
  text(greetings[0],460,200); 


  
  }
  
  switch (key) {   
    case '2':
  
  background(0,150,150);
  
  //dad's face
  ellipseMode(CENTER);
  fill(c2);
  ellipse(900,400,350,350);
  
  //left eye
  ellipseMode(CENTER);
  fill(c1);
  ellipse(885,400, 15,15);
  
  //right eye
  ellipseMode(CENTER);
  fill(c1);
  ellipse(915,400, 15,15);
  
  //mouth
  stroke(c1);
  strokeWeight(5);
  ellipseMode(CENTER);
  arc(900, 440, 80, 80, 0, PI, CHORD);
  
  //text
  fill(c2);
  text(greetings[1],460,200);   
    
  }
  
    switch (key) {   
    case '3':
  
  background(0);
  
  //kid's face
  ellipseMode(CENTER);
  fill(c1);
  ellipse(300,400, 200,200);
  
  //kid's left eye
  ellipseMode(CENTER);
  strokeWeight(1);
  stroke(1);
  fill(c2);
  ellipse(285,400, 15,15);
  
  //kid's left brow
  stroke(c2);
  strokeWeight(5);
  line(260,395,280,375);
  
  //kid's right eye
  ellipseMode(CENTER);
  strokeWeight(1);
  stroke(1);
  fill(c2);
  ellipse(315,400, 15,15);
  
  //kid's right brow
  stroke(c2);
  strokeWeight(5);
  line(330,375,350,395);
  
  //kid's mouth
  stroke(c2);
  strokeWeight(5);
  ellipseMode(CENTER);
  arc(285, 460, 50, 50, PI+QUARTER_PI, TWO_PI, CHORD);
 
  //text
  fill(c1);
  text(greetings[2],460,200);  
    
  }
  
    switch (key) {   
    case '4':
  
  background(0,150,150);
  
  //dad's face
  ellipseMode(CENTER);
  fill(c2);
  ellipse(900,400,350,350);
  
  //left eye
  ellipseMode(CENTER);
  fill(c1);
  ellipse(885,400, 15,15);
  
  //right eye
  ellipseMode(CENTER);
  fill(c1);
  ellipse(915,400, 15,15);
  
  //mouth
  stroke(c1);
  strokeWeight(5);
  ellipseMode(CENTER);
  arc(900, 440, 80, 80, 0, PI, CHORD);
  
  //text
  fill(c2);
  text(greetings[3],460,200);      
  }
  
      switch (key) {   
    case '5':
  
  background(0);
  
  //kid's face
  ellipseMode(CENTER);
  fill(c1);
  ellipse(300,400,200,200);
  
  //kid's left eye expanded
  ellipseMode(CENTER);
  fill(255);
  strokeWeight(1);
  stroke(c2);
  ellipse(275,400,40,40); 
  
  //kid's left eye
  ellipseMode(CENTER);
  fill(c2);
  strokeWeight(1);
  stroke(c2);
  ellipse(275,400, 15,15);
  
  //kid's left brow
  stroke(c2);
  strokeWeight(9);
  line(265,360,295,380);
  
  //kid's right eye expanded
  ellipseMode(CENTER);
  strokeWeight(1);
  stroke(c2);
  fill(255);
  ellipse(325,400,40,40);   
  
  //kid's right eye
  ellipseMode(CENTER);
  strokeWeight(1);
  stroke(c2);
  fill(c2);
  ellipse(325,400, 15,15);
  
  //kid's right brow
  stroke(c2);
  strokeWeight(9);
  line(310,380,340,360);
  
  //kid's mouth
  stroke(c2);
  strokeWeight(0);
  fill(c2);
  ellipseMode(CENTER);
  arc(300,480,100,100,PI,TWO_PI);
  
  //text
  fill(c1);
  text(greetings[4],460,200);
  
      }
      
      switch (key) {   
    case '6':
  
  background(0,150,150);
  
  //dad's face
  ellipseMode(CENTER);
  fill(c2);
  ellipse(900,400,350,350);
  
  //left eye
  ellipseMode(CENTER);
  fill(c1);
  ellipse(885,400, 15,15);
  
  //right eye
  ellipseMode(CENTER);
  fill(c1);
  ellipse(915,400, 15,15);
  
  //mouth
  stroke(c1);
  strokeWeight(5);
  ellipseMode(CENTER);
  arc(900, 440, 80, 80, 0, PI, CHORD);
  
  //text
  fill(c2);
  text(greetings[5],460,200);     
  }
  
 


}
    
