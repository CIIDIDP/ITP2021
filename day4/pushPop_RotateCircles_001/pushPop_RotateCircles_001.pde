float myAngle = 60;

void setup() {
  size(600, 600);
  background(200);
  //noStroke();
}

void draw() {
  //background(200);
  /*
  float myRed = random(0, 255);
  float myGreen = random(0, 255);
  float myBlue = random(0, 255);

  fill(myRed, myGreen, myBlue, 20);
*/
  fill(200,50); //fill(grayscale) //fill(red,green,blue) //fill(grayscale,alpha) //fill(red, green, blue, alpha)
  //rect(0,0,width, height);
  
  fill(255,80);
  pushMatrix();
  translate(width/2, height/3);
  rotate(radians(myAngle));
  ellipse(100, 0, 100, 100);
  popMatrix();
  
  pushMatrix();
  translate(width/2, 2*height/3);
  rotate(radians(-myAngle));
  ellipse(100, 0, 100, 100);
  popMatrix();

  myAngle+=3; //myAngle=myAngle+0.1 is the same as myAngle+=0.1
}
