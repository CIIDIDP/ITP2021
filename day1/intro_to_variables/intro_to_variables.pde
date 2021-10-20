void setup() {
  size(400,300);
  background(200,200,200);
  
  stroke(255,0,0);
  strokeWeight(2);
  
  float mySize = 30.56;
  
  ellipse(100,150,mySize,mySize);
  ellipse(150,150,mySize,mySize*2);
  ellipse(200,150,mySize-20,mySize-15);
  ellipse(250,150,mySize/3,mySize);
  ellipse(300,150,mySize+40,mySize);
  
}
