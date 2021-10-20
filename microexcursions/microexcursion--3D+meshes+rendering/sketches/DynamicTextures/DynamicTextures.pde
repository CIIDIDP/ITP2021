/* borrowed from `TextureQuad` example */

PGraphics mGraphics;

void setup() {
  size(1024, 768, P3D);
  mGraphics = createGraphics(512, 512, P3D);
  noStroke();
}

void draw() {
  background(50);

  updateOffscreen(mGraphics);

  translate(width / 2, height / 2);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateZ(PI/6);
  beginShape();
  texture(mGraphics);
  vertex(-100, -100, 0, 0, 0);
  vertex(100, -100, 0, mGraphics.width, 0);
  vertex(100, 100, 0, mGraphics.width, mGraphics.height);
  vertex(-100, 100, 0, 0, mGraphics.height);
  endShape();
}

void updateOffscreen(PGraphics pGraphics) {
  float mDiameter = sin(radians(frameCount)) * 128 + 256;
  pGraphics.beginDraw();
  pGraphics.background(255, 0, 0);
  pGraphics.fill(255, 127, 0);
  pGraphics.noStroke();
  pGraphics.circle(pGraphics.width / 2, pGraphics.height / 2, mDiameter);
  pGraphics.endDraw();
}
