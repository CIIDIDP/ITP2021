int mSize = 200;
color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
color mColor = red;
void setup() {
  size(1024, 768);
  background(200);
}

void draw() {
  fill(mColor);
  ellipse(width/2, height/2, mSize, mSize);
}

void mouseClicked() {
  float mDist = dist(mouseX, mouseY, width/2, height/2);
  if (mDist<mSize/2) {
    if (mColor==red) {
      mColor=yellow;
    } else if (mColor==yellow) {
      mColor = green;
    } else {
      mColor=red;
    }
  }
}
