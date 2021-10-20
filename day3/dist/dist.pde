int mSize=200;

void setup() {
  size(1024,768);
  
}


void draw() {
  background(200);
  fill(255);
  
  float pointerDistance = dist(mouseX,mouseY,width/2,height/2);
  
  if(pointerDistance < mSize/2) {
    fill(255,0,0);
  }
  
  ellipse(width/2,height/2, mSize,mSize);
  
  
  println(pointerDistance);
  
  
}
