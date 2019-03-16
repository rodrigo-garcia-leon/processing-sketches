void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  drawSnake();
}

void drawSnake() {
  pushMatrix();
  translate(width / 2, height / 2);
  for (float angle = 0; angle < 360; angle = angle + 10) {
    pushMatrix();
    rotate(radians(angle));
    drawRay();
    popMatrix();
  }
  popMatrix();
}

void drawRay() {
  pushStyle();
  stroke(255);
  noFill();
  ellipse(0, 0, 225, 300);
  popStyle();
}
