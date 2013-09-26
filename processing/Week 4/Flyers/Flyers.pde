
float movementSpeed = 0.002;

Flyer[] flyers = new Flyer[50];
int numberOfFlyers = 0;
PFont numberDisplayFont;

void setup(){
  size(1200,800);
  background(255);
  frameRate(120);
  numberDisplayFont = createFont("Arial",48);
}

void draw(){
  background(255);
  
  //if(numberOfFlyers > 0){
    for(int i=0;i<numberOfFlyers;i++){
      flyers[i].setIndex(i);
      flyers[i].draw();
    }
  //}
}


void mouseReleased(){
  flyers[numberOfFlyers] = new Flyer(mouseX,mouseY);
  numberOfFlyers++;
  if(numberOfFlyers >= flyers.length) numberOfFlyers = 0;
}
