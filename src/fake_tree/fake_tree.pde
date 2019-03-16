void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  
  drawCircle(width / 2, height / 2, 100, 1);
  drawCircle(width / 2, height / 2, 125, 1.25);
  drawCircle(width / 2, height / 2, 150, 1.5);
  drawCircle(width / 2, height / 2, 175, 1.75);
  drawCircle(width / 2, height / 2, 200, 2);
}

void drawCircle(float x, float y, float r, float w) {
  stroke(255);
  strokeWeight(w);
  
  float angleStep = 20;
  float angleMax = 360;
  float angleEnd, x1, y1, x2, y2;
  for (float angleStart = 0; angleStart < angleMax; angleStart = angleStart + angleStep) {
    angleEnd = angleStart + angleStep;
    
    x1 = x + r * cos(radians(angleStart));
    x2 = x + r * cos(radians(angleEnd));
    y1 = y + r * sin(radians(angleStart));
    y2 = y + r * sin(radians(angleEnd));
    
    line(x1, y1, x2, y2);
  }
}
