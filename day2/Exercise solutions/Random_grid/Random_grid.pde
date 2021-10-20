float gridSize = 15;
void setup() {
  size(600, 600);
  background(0);
  noFill();
  stroke(255);
  strokeWeight(5);
}


void draw() {
  noLoop(); //use this to run draw loop only once.
  for (int i=0; i < width/gridSize ; i++){ 
    for (int j=0; j < height/gridSize ; j++){
      float x = i*gridSize;
      float y = j*gridSize;
      //using random() as a "coin flip". random(); picks a number between 0 and 1. 
      if (random(1)<0.5) { 
      line(x,y, x+gridSize, y+gridSize);
      } else {
        line(x+gridSize,y, x, y+gridSize);
      }
    }
  }
}
