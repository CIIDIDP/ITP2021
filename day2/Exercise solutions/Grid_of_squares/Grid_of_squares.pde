int pixelSize = 40;

void setup() {
  size(400, 400);
  colorMode(RGB);
  noStroke();
  frameRate(5);     //use this to slow down the frame rate
}

void draw() {
  noLoop();         //use this if you want to prevent animation;
  background(220);

  for (int i = 0; i<width/pixelSize; i++) {
    for (int j = 0; j<height/pixelSize; j++){
      
      //R & G selected at random (but between a certain "band" of values)
      fill(random((j * pixelSize - pixelSize * 2), j * pixelSize), 
        random((i * pixelSize - pixelSize * 2), i * pixelSize), 
        200); 
  
      // fill(j * pixelSize, i * pixelSize, 200); 
      //uncomment the line above to see the grid with no randomness.
      square(i * pixelSize, j * pixelSize, pixelSize);
    }
  }
}
