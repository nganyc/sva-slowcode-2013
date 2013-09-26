
class Flyer {  
  PVector startPosition, endPosition;
  float movementModifier = 0.0;
  private int index;
  
  Flyer(int x, int y){
    startPosition = new PVector(x,y);
    
    endPosition = new PVector(random(0,width), random(0,height));
  }
  
  void setIndex(int _index){
    index = _index;
  }
  
  void draw(){
    PVector curPos = PVector.lerp(startPosition, endPosition, movementModifier);
    
    fill(0,40,255);
    noStroke();
    ellipse(curPos.x, curPos.y, 10, 10);    
    
    textFont(numberDisplayFont,12);
    text(index, curPos.x, curPos.y+24);
    
    stepTowardsNextPosition();  
  }
  
  void stepTowardsNextPosition(){
    movementModifier += movementSpeed;
    if(movementModifier > 1.0){
      resetPosition( random(0,width), random(0,height) );
    }
  }
  
  void resetPosition(float x, float y){
    startPosition = new PVector(x,y);
    endPosition = new PVector(random(0,width), random(0,height));
    movementModifier = 0.0;
  }
}
