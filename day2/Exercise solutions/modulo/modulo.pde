float gridSize = 15;

void setup() {
  size(600, 600);
  background(0);
  noFill();
  stroke(255);
  strokeWeight(4);
}


void draw() {
  
  for (int i=0; i < width/gridSize ; i++){
    for (int j=0; j < height/gridSize ; j++){
      float x = i*gridSize;
      float y = j*gridSize;
      int reminder = i%2;
      if (reminder == 0) { //i%2 alternates between 0 and 1; 0 also means FALSE and 1 also means TRUE. 
      line(x,y, x+gridSize, y+gridSize);
      } else {
        line(x+gridSize,y, x, y+gridSize);
      }
    }
  }
  
}
