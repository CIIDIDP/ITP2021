String myMsg = "Ciao IDP21";
float a;
void setup() {
  size(600, 900);
  background(200);

  stroke(255, 0, 0);
  strokeWeight(2);
  
  float halfHeight = height/2;
  float halfWidth = width/2;
  //line(aPointX,aPointY,bPointX,bPointY);
  line(0, halfHeight, width, halfHeight);
  line(halfWidth, 0, halfWidth, height);
  
  // first rectangle
  rectMode(CENTER); //to start drawing the rectangle from the center point and not the corner
  noStroke();
  fill(255,0,0);
  square(halfWidth,150.56,140);
  
  a=5/3.0;
  print(a);
  //second rectangle
  rectMode(CORNER);
  fill(0,0,255);
  square(halfWidth,halfHeight,100);
  
  

  strokeWeight(10);
  point(0, 150);
}

void draw() {
}
