color a = color(191, 216, 222);
color b = color(155, 158, 160);
color c = color(220, 227, 232);

void setup() {
  size(600, 600);
}

void draw() {
  background(255);

  fill(c);
  noStroke();
  rectMode(CENTER);
  rect(width/2, height/2, map(second(), 0, 59, 0, width), height/1);

  fill(b);
  //  stroke(255);
  //  strokeWeight(6);
  rectMode(CENTER);
  rect(width/2, height/2, map(minute(), 0, 59, 300, 80), map(minute(), 0, 59, 300, 80));

  fill(c);
  noStroke();
  //  stroke(255);
  //  strokeWeight(3);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, map(hour(), 0, 59, 20, 200), map(hour(), 0, 59, 20, 200));
}

