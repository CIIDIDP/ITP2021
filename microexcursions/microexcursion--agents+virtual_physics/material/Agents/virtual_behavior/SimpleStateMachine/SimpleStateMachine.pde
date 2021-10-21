/* a very simple state machine with two states */

final int DRAW_RECT = 0;
final int DRAW_ELLIPSE = 1;
final int DRAW_TRIANGLE = 2;
int mState;
int mCounter;

void setup() {
  size(640, 480);
  noFill();
  rectMode(CENTER);
  mState = DRAW_RECT;
}

void draw() {
  background(255);

  switch (mState) {
  case DRAW_RECT:
    rect(mouseX, mouseY, 100, 100);
    break;
  case DRAW_ELLIPSE:
    ellipse(mouseX, mouseY, 100, 100);
    if (mCounter > 60) {
      mCounter = 0;
      mState = DRAW_TRIANGLE;
    }
    break;
  case DRAW_TRIANGLE:
    triangle(mouseX, mouseY - 50, mouseX + 50, mouseY + 50, mouseX - 50, mouseY + 50);
    if (mCounter > 60) {
      mCounter = 0;
      mState = DRAW_RECT;
    }
    break;
  }
  mCounter++;
}

void mousePressed() {
  mState = DRAW_ELLIPSE;
  mCounter = 0;
}
