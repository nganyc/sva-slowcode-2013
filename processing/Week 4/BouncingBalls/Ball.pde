
class Ball {
  float x;
  float y;
  float speedX;
  float speedY;
  
  Ball(float _x, float _y) {
    x = _x;
    y = _y;
    speedX = random(-2.5,2.5);
    speedY = random(-2.5,2.5);
  }
  
  void draw() {
    x = x + speedX;
    y = y + speedY;
  
    // Remember, || means "or."
    if (x > width || x < 0) {
      speedX = speedX * -1;
    }
    if(y > height || y < 0){
      speedY = speedY * -1;
    }
  
    noStroke();
    fill(0,40,255);
    ellipse(x,y,7,7);
  }
}
