void printCoordinates() {
  println("PosX:"+mouseX);
  println("PosY:"+mouseY);
}

void drawBackground() {
  float mSize = 8;
  float mNoiseStep = 0.05;

  for (int column=0; column<width/mSize; column++) {
    for (int row=0; row<height/mSize; row++) {

      float mShade = noise(column*mNoiseStep, row*mNoiseStep)*255;
      noStroke();
      fill(mShade, 50);
      rect(mSize*column, mSize*row, mSize, mSize);
    }
  }
}

void drawClouds() {
  float cDiameter = 100;
  float cSpace = cDiameter/2;
  for (int i=0; i<width; i++) {
    fill (255);
    circle(x+i*cSpace, y, cDiameter);
  }
}

void drawPerson(int posX, int posY) {
  pushMatrix();
  translate(posX,posY);
  fill(252, 85, 38);
  quad(193, 250, 208, 250, 216, height, 185, height);
  fill(255);
  stroke(252, 85, 38);
  strokeWeight(5);
  circle(width/2, height-50, 30);
  noFill();
  stroke(100);
  strokeWeight(2);
  arc(192, 246, 4, 4, 0, PI, OPEN);
  arc(205, 246, 4, 4, 0, PI, OPEN);
  arc(198, 252, 3, 3, 0, PI, OPEN);
  popMatrix();
}

void addRainDrop() {
  int arraySize = xPosArray.size();
  for (int i=0; i<arraySize; i++) {
    int posX = xPosArray.get(i);
    int posY = yPosArray.get(i);
    stroke(255, 50);
    strokeWeight(2);
    //float rRain = noise(posX*mNoiseStep, posY*mNoiseStep)*10;
    line(posX, posY, posX-rRain, posY+2*rRain);
  }
}
