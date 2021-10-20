void setup() {
  size(400, 400);
  background(0);

  fill(0, 28, 245);
  stroke(115, 229, 209);
  strokeWeight(10);

  beginShape();
  vertex(200, 100);
  vertex(300, 200);
  vertex(200, 300);
  vertex(100, 200);
  endShape(CLOSE);
}
