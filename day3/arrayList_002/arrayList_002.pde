ArrayList<Integer> xPosArray;
ArrayList<Integer> yPosArray;

void setup() {
  size(800, 800);
  background(200);

  xPosArray = new ArrayList<Integer>();
  yPosArray = new ArrayList<Integer>();

  xPosArray.add(15);
  yPosArray.add(72);
  
  noStroke();
  
  fill(255,20);
}

void draw() {
  background(200);

  int arraySize = xPosArray.size();
  for (int index = 0; index< arraySize; index++) {
    int posX = xPosArray.get(index);
    int posY = yPosArray.get(index);

    ellipse(posX, posY, 50, 50);
    
    int margin = 3;
    int newX = posX + int(random(-margin,margin));
    int newY = posY + int(random(-margin, margin));
    
    xPosArray.set(index, newX);
    yPosArray.set(index, newY);
  }
  
  println(frameRate);
}

void mouseMoved() {
  xPosArray.add(mouseX);
  yPosArray.add(mouseY);
}
