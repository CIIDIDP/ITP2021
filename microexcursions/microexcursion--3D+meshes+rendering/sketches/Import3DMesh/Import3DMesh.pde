import gewebe.*; 

ModelData mModelData;

void setup() {
  size(1024, 768, P3D);

  mModelData = ModelLoaderOBJ.parseModelData(OBJWeirdObject.DATA);
  println(mModelData.vertices().length / 3);
}

void draw() {
  background(50);
  translate(width/2, height/2);
  rotateY(radians(frameCount));
  rotateZ(radians(frameCount * 0.7));

  stroke(0);
  fill(255);
  beginShape(TRIANGLES);
  for (int i = 0; i < mModelData.vertices().length; i += 3) {
    float x = mModelData.vertices()[i + 0];
    float y = mModelData.vertices()[i + 1];
    float z = mModelData.vertices()[i + 2];
    vertex(x, y, z);
  }
  endShape();
}
