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
  
  PVector mDirection = PVector.sub(mMousePosition, mCirclePosition);
  mDirection.normalize();
  mDirection.mult(5);
  
  mCirclePosition.add(mDirection);
  
  fill(0, 127, 255);
  circle(mMousePosition.x, mMousePosition.y, 20);

  fill(0);
  circle(mCirclePosition.x, mCirclePosition.y, 50);
}
