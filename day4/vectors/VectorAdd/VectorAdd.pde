PVector mCirclePosition;
PVector mDirection;

void setup() {
  size(1024, 768);
  mCirclePosition = new PVector();
  mCirclePosition.x = width / 2;
  mCirclePosition.y = height / 2;
  
  mDirection = new PVector();
  mDirection.set(1, 2);
}

void draw() {
  background(255);
  noStroke();
  fill(0);
  
  mDirection.x = random(-2, 2);
  mDirection.y = random(-2, 2);
  
  mCirclePosition.add(mDirection);
  // same as
  // mCirclePostion.x += mDirection.x;
  // mCirclePostion.y += mDirection.y;
  circle(mCirclePosition.x, mCirclePosition.y, 50);
}
