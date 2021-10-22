ThingInArray[] mThings;

void setup() {
  size(1024, 768);
  mThings = new ThingInArray[3];
  mThings[0] = new ThingInArray();
  mThings[1] = new ThingInArray();
  mThings[2] = new ThingInArray();
  
  mThings[0].x = 23;
  mThings[2].x = 42;
}

void draw() {
  background(255);
  noStroke();
  fill(0);
}

class ThingInArray {
  float x;
  float y;
}
