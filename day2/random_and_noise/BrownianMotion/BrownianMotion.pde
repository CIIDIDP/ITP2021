float x0 = 0;
float y0 = 0;
float x1 = 0;
float y1 = 0;
float mSize = 30;
float mSpeed = 0.25;

void setup() {
  size(1024, 768);
  noStroke();
  fill(0);
  x0 = width / 2;
  y0 = height / 2;
  x1 = width / 2;
  y1 = height / 2;
}

void draw() {
  background(255);
  
  x0 = x0 + random(-mSpeed, mSpeed);
  y0 = y0 + random(-mSpeed, mSpeed);
  fill(0, 127, 255);
  circle(x0, y0, mSize);

  x1 = x1 + random(-mSpeed, mSpeed);
  y1 = y1 + random(-mSpeed, mSpeed);
  fill(255);
  circle(x1, y1, mSize);
}
