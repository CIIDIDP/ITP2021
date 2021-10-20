float x = 0;
float y = 0;
float mSize = 100;
float mDirection = 1; // there might be a problem with speed > 1
boolean mIsMoving = false;

void setup() {
  size(1024, 768);
  noStroke();
  rectMode(CENTER);

  x = width/2;
  y = height/2;
}

void draw() {
  background(255);
  fill(0);
  rect(x, y, mSize, mSize);

  if (mIsMoving) {
    x = x + mDirection;
  }

  if (x > width) {
    mDirection = -1;
  } else if (x < 0) {
    mDirection = 1;
  }
}

void mousePressed() {
  if (mIsMoving) { // if (mIsMoving == true)
    mIsMoving = false;
  } else {
    // start the rect again
    mIsMoving = true;
  }

  // short version: mIsMoving = !mIsMoving;
}

void mouseWheel(MouseEvent event) {
  float mTicks = event.getCount();
  mSize = mSize + mTicks;
}
