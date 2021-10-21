ArrayList<Integer> xPosArray;
ArrayList<Integer> yPosArray;

void setup() {
  size(400, 300);
  background(255);
  noStroke();
  xPosArray = new ArrayList<Integer>();
  yPosArray = new ArrayList<Integer>();
}

float x = 0;
float y = 0;
float rRain;

void draw() {

  printCoordinates();
  
  drawBackground();
  
  drawClouds();
  
  drawPerson(0,0);
  drawPerson(50,0);
  drawPerson(-100,-50);
  
  addRainDrop();
}


void mouseClicked() {
  //Rain falling
  xPosArray.add(mouseX);
  yPosArray.add(mouseY);
  rRain = random(0, 10);
  //Saving frames
  saveFrame("line-######.png");
}

void keyPressed() {
  if (keyCode == SHIFT) {
    xPosArray.remove(0);
    yPosArray.remove(0);
  }
}
