float x;
float y;
int size = 50;

void setup() {
  size(400, 400);
  x=random(width);
  y=random(height);
}

void draw() {
  background(220);
  ellipse(x,y,size,size);
}

void mouseClicked() {
  float distFromCenter = dist(mouseX,mouseY,x,y);
  if(distFromCenter<(size/2)) {
    x=random(width);
    y=random(height);
  }
}


void keyPressed() {
  if (key == 'c') {
    fill(random(255),random(255),random(255));
  } else if (key == 'd') {
    fill(255);
  }
}
