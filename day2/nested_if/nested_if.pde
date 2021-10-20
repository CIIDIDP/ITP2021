int mySize = 42;

void setup() {
  size (400, 400);
}

void draw() {
  background(255);
  
  stroke(255, 0, 0);
  strokeWeight(2);
  line(width/2, 0, width/2, height);
  line(0, height/2, width/2, height/2);

  if (mouseX < width/2) {
    if (mouseY>height/2) {
      fill(0, 0, 255);
    } else {
      fill(255);
    }

    ellipse(mouseX, mouseY, mySize, mySize);
  }

  /*
  if(mouseX>width/2) {
   rectMode(CENTER);
   fill(0,255,0);
   rect(mouseX,mouseY,mySize,mySize);
   }
   */

  else {
    rectMode(CENTER);
    fill(0, 255, 0);
    rect(mouseX, mouseY, mySize, mySize);
  }

  //println("mouseX: "+mouseX+"   mouseY: "+mouseY);
}
