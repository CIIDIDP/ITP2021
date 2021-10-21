int numColumns = 15;
int numRows = 15;

int numElements = numColumns*numRows;

float[] angleArray = new float[numElements];

void setup() {
  size(800, 800);
  background(0);

  for (int index = 0; index < angleArray.length; index++) {
    angleArray[index] = random(0, 360);
  }

  noStroke();
}

void draw() {
  fill(0, 20);
  rect(0, 0, width, height);

  int borderX = 50;
  int stepX = 50;
  int borderY = 50;
  int stepY = 50;

  int mySize = 10;
  float speed = 3;

  fill(255);
  for (int row = 0; row < numRows; row++) {
    for (int column = 0; column < numColumns; column++) {
      pushMatrix();
      translate(borderX + stepX*column, borderY + stepY*row);
      float thisAngle = angleArray[column*numColumns + row];
      rotate(radians(thisAngle));
      ellipse(stepX/2, 0, mySize, mySize);
      popMatrix();

      angleArray[column*numColumns + row] += speed;
    }
  }
}
