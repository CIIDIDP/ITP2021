float dAngle = 0;

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(200);
  
  float myAngle = radians(dAngle);
  pushMatrix(); //(
  translate(200,200);
  rotate(myAngle);
  //this is for the white rectangle
  fill(255);
  rect(0,0, 80, 120);
  line(0,0, 80,0);
  line(0,0, 0, 120);
  popMatrix(); //)
  
  //this is for the red rectangle
  pushMatrix();
  translate(100,100);
  rotate(myAngle*-10);
  fill(255,0,0);
  rect(0,0, 80, 120);
  fill(0,255,0);
  ellipse(80,0,100,50);
  popMatrix();
  
  dAngle=dAngle-0.1;
  //dAngle=dAngle+0.1;
}
