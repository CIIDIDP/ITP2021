// oop object oriented programming

Thing mThing;
Thing mOtherThing;

void setup() {
  size(1024, 768);

  mThing = new Thing();
  mThing.position.x = width / 2;
  mThing.position.y = height / 2;
  mThing.size = 50;
  mThing.name = "Thing";
  println("My name is: " + mThing.name);

  mOtherThing = new Thing();
  mOtherThing.position.x = 100;
  mOtherThing.position.y = 50;
  mOtherThing.size = 25;
  mOtherThing.name = "Other Thing";
  println("My name is: " + mOtherThing.name);
}

void draw() {
  background(255);
  noStroke();
  fill(0);

  mThing.move(1, 1);
  mOtherThing.move(2, 4);
  
  mThing.draw();
  mOtherThing.draw();
}

class Thing {
  PVector position = new PVector();
  float size;
  String name;

  void move(float pX, float pY) {
    position.x += pX;
    position.y += pY;
    // same as above: position.add(pX,pY);
  }

  void draw() {
    circle(position.x, position.y, size);
  }
}
