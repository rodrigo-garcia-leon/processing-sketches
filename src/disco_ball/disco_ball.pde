float xc;
float yc;
FloatList rxs = new FloatList();
FloatList rys = new FloatList();

void setup() {
  size(800, 600);
  
  xc = width / 2;
  yc = height / 2;
  
  float rs = 10;
  float re = 300;
  float ro = 50;
  
  for (float r = rs; r < re; r = r + ro) {
    rxs.append(r);
    rys.append(re - r);
  }
}

void draw() {
  background(0);
  
  for (float rx : rxs) {
    for (float ry : rys) {
      drawEllipse(xc, yc, rx, ry);
    }
  }
}

void drawEllipse(float x, float y, float rx, float ry) {
  stroke(255);
  strokeWeight(1);
  
  float angleStep = 1;
  float angleMax = 360;
  
  float x1, y1, x2, y2;
  for (float angle = 0; angle < angleMax; angle = angle + angleStep) {
    x1 = x + rx * cos(radians(angle));
    y1 = y + ry * sin(radians(angle));
    x2 = x + rx * cos(radians(angle + angleStep));
    y2 = y + ry * sin(radians(angle + angleStep));
    
    line(x1, y1, x2, y2);
  }
}
