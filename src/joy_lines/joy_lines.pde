FloatList ys;

void setup() {
  size(800, 600);
  
  float yOffset = 5;
  float yStep = 25;
  
  ys = new FloatList();
  for (float y = yOffset; y < height - yOffset; y = y + yStep * noise(y)) {
    ys.append(y);
  }
}

void draw() {
  background(0);
  for (float y : ys) {
    drawLine(y);
  }
}

void drawLine(float y) {
  stroke(255);
  
  float xOffset = 5;
  float xStep = 10;
  float y1 = y;
  float y2;
  
  for (float x = xOffset; x < width - xOffset; x = x + xStep) {
    y2 = y + 5 * noise(x, y);
    strokeWeight(2);
    line(x, y1, x + xStep, y2);
    y1 = y2;
  }
}
