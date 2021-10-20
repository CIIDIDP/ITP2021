float x = 0;
float y = 0;
float r = 0;

void setup() {
  size(1024, 768);
  background(255);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  float mSize = 10;
  float mStep = 10;
  float mNoiseStep = 0.05;
  float mShade = noise(r) * 255;
  
  r = r + mNoiseStep;

  fill(mShade);
  rect(x, y, mSize, mSize);
  x = x + mStep;
  
  if (x > width) {
    x = 0;
    y = y + mStep;
  }
}

/* see [Perlin Noise](https://en.wikipedia.org/wiki/Perlin_noise) */
