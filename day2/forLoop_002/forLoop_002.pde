void setup() {
  size(800, 800);
}

void draw() {
  background(200);

  fill(255);
  int posX = 100;
  int spaceX = 50;

  int posY = 100;
  int spaceY = 50;
  for (int collumn = 0; collumn < 10; collumn = collumn + 1) {
    
    for (int row = 0; row < 10; row = row + 1) {
      //fill(25*row, 25*collumn, 0);
      rect(posX + spaceX*collumn, posY + spaceY*row, 25, 25);
    }
  }
}
