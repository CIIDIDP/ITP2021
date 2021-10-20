float x;
float y;
float mDiameter;
float mDiameterModifier;
float mPositionModifier;
int mBackground;

void setup() {
  size(1024, 768);

  mBackground = 255;

  background(mBackground);
  stroke(0);
  fill(mBackground);

  x = width / 2;
  y = height / 2;
  mDiameter = 100;
  mDiameterModifier = 10;
  mPositionModifier = 10;
}

void draw() {
  circle(x, y, mDiameter);
}

void keyPressed() {
  if (key == 'b') {
    mDiameter = mDiameter + mDiameterModifier;
  } else if (key == 's') {
    mDiameter = mDiameter - mDiameterModifier;
  }

  if (keyCode == LEFT) {
    x = x - mPositionModifier;
  } else if (keyCode == RIGHT) {
    x = x + mPositionModifier;
  } else if (keyCode == UP) {
    y = y - mPositionModifier;
  } else if (keyCode == DOWN) {
    y = y + mPositionModifier;
  } else if (keyCode == BACKSPACE || keyCode == DELETE) {
    background(mBackground);
  }
}
