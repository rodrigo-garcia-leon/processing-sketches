void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  drawCircle();
}

void drawCircle() {
  pushStyle();
  stroke(255);
  strokeWeight(2);
  
  pushMatrix();
  translate(width / 2, height / 2);
  
  float baseRadius = 200;
  float angleMax = 1440;
  float angleStep = 1;
  float r, x1, y1, x2, y2;
  for (float angle = 0; angle < angleMax; angle = angle + angleStep) {
    r = baseRadius * cos(radians(angle * 12));
    
    x1 = r * cos(radians(angle));
    y1 = r * sin(radians(angle));
    x2 = r * cos(radians(angle + angleStep));
    y2 = r * sin(radians(angle + angleStep));
    line(x1, y1, x2, y2);
  }
  
  popStyle();
  popMatrix();
}
