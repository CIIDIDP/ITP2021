void setup() {
  size(400, 400);
  noStroke();
  background(200);  
  fill(255);
  circle(width/2, height/2, 100);
  fill(0);
  circle(width/2-22, height/2-5, 10);
  circle(width/2+22, height/2-5, 10);
}

void draw() {
  if (mousePressed) {
    circle(mouseX, mouseY, 10);
  }
}
