//green: 0, 140, 69
//white: 244, 249, 255
//red: 205, 33, 42

int mySize = 25;

color green = color(0, 140, 69, 100);
color white = color(244, 249, 255, 100);
color red = color(205, 33, 42, 100);

//&& AND operator
// || OR operator

void setup() {
  size(400, 300);
  background(220);
  noStroke();
}

void draw() {
  if (mouseX <= width/3) {
    fill(green);
  } else if (mouseX > width/3 && mouseX <= width/3 *2) {
    fill(white);
  } else {
    fill(red);
  }

  ellipse(mouseX, mouseY, mySize, mySize);
}
