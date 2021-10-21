PVector mCirclePosition;

void setup() {
  size(1024, 768);
  mCirclePosition = new PVector();
  mCirclePosition.x = width / 2;
  mCirclePosition.y = height / 2;
}

void draw() {
  background(255);
  noStroke();
  
  PVector mMousePosition;
  mMousePosition = new PVector();
  mMousePosition.set(mouseX, mouseY);
  
  PVector mDistanceVector = PVector.sub(mMousePosition, mCirclePosition);
  float mDistance = mDistanceVector.mag();
  
  float mMouseRadius = 10;
  float mCirlceRadius = 25;
  
  fill(0, 127, 255);
  circle(mMousePosition.x, mMousePosition.y, mMouseRadius * 2);

  if (mDistance < mCirlceRadius + mMouseRadius) {
    fill(255, 127, 0);
  } else {
    fill(0);
  }
  circle(mCirclePosition.x, mCirclePosition.y, mCirlceRadius * 2);
}
