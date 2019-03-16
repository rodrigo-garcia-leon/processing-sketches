void setup() {
  frameRate(60);
  size(1024, 768);
}

void draw() {
  background(0);
  
  float[] ws = { 0.1, 0.15 };
  float[] radiuses = { 100, 120 };
  float[] phis = { 0, 0 };
  float[] sizesPoints = { 30, 20 };
  
  for(int i = 0; i < ws.length; i++) {
    drawOrbit(radiuses[i], ws[i], phis[i], sizesPoints[i]);
  }
}

void drawOrbit(float radius, float w, float phi, float sizePoint) {
  fill(255);
  float wt = w * frameCount;
  float x = width / 2 + radius * cos(wt + phi);
  float y = height / 2  + radius * sin(wt + phi);
  ellipse(x, y, sizePoint, sizePoint);
}  