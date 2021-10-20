void setup() {
  size(640, 480);
}

void draw() {
  background(255, 255, 255);

  stroke(127, 127, 127); // "pick the grey pen"
  fill(191, 191, 191); // "grey fill brush"
  ellipse(320, 240, 100, 100);

  stroke(0, 0, 255); // "pick the blue pen"
  fill(255, 127, 0); // "orange fill brush"
  rect(100, 100, 100, 100);

  noFill();
  rect(400, 300, 100, 100);

  strokeWeight(10);
  stroke(200, 32, 201);
  line(0, 0, 640, 480);
  strokeWeight(1);
}
