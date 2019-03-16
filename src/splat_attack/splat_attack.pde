size(800, 600);
background(0);

stroke(255);
translate(width / 2, height / 2);

float angleMax = 360;
float angleStep = 0.1;
float baseRadius = 150;
float x, y, r, rx, ry, ps;
for (float angle = 0; angle < angleMax; angle = angle + angleStep) {
  rx = 50 * cos(radians(angle * 7));
  ry = 50 * sin(radians(angle * 35));
  r = baseRadius + rx + ry;
  x = r * cos(radians(angle));
  y = r * sin(radians(angle));
  ps = 2 * noise(x, y);
  ellipse(x, y, ps, ps);
}
