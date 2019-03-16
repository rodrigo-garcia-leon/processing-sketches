void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  drawCircle();
}

void drawCircle() {
  for (float angle = 0; angle < 360; angle = angle + 10) {
    pushMatrix();
    translate(width / 2, height / 2);
    rotate(radians(angle));
    drawLine(50, 150);
    popMatrix();
  }
}

void drawLine(float r1, float r2) {
  stroke(255);
  strokeWeight(2);
  line(r1, 25, r2, 0);
}
