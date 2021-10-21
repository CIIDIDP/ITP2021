void setup() {
  size(1024,768);
}

void draw() {

  printEllipse();
  
}

void printEllipse() {
  float mSize = calcThisNumbers(42, 23, random(20,68));
  ellipse(width/2,height/2,mSize,mSize);
}

float calcThisNumbers(float n1, float n2, float n3) {
  float result = n1+n2;
  result = result*n3;
  result++;
  result = result/n1;
  //println(result);
  return result;
}
