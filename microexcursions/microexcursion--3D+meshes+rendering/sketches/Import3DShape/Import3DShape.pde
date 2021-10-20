PShape s;

void setup() {
  size(1024, 768, P3D);
  s = loadShape("threenut.obj");
  println(s.getVertexCount()); // zero?
}

void draw() {
  background(50);
  translate(width/2, height/2);
  rotateY(radians(frameCount));
  rotateZ(radians(frameCount * 0.7));

  s.setStroke(color(0)); // not visible?
  s.setFill(color(255));
  shape(s, 0, 0);

  // does not work … see `s.getVertexCount()`
  //beginShape(TRIANGLES);
  //for (int i=0; i<s.getVertexCount(); i+=3) {
  //  PVector v = s.getVertex(i);
  //  vertex(v.x, v.y, v.z);
  //}
  //endShape();
}
