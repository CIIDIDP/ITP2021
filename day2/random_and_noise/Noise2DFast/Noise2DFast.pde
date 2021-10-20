float x = 0;
float y = 0;

void setup() {
  size(1024, 768);
  background(255);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  for (int i = 0; i < 10; i++) {
    float mSize = 10;
    float mStep = 10;
    float mNoiseStep = 0.004;
    float mShade = noise(x * mNoiseStep, y * mNoiseStep) * 255;

    fill(mShade);
    rect(x, y, mSize, mSize);
    x = x + mStep;

    if (x > width) {
      x = 0;
      y = y + mStep;
    }
  }
}
