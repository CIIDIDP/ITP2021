//int[] idpAges = new int[14];
int[] idpAges = {25, 31, 25, 28, 23, 28, 28, 16, 11, 32, 12, 72, 30, 18, 47, 91, 23, 100};

void setup() {
  size(1000, 600);
  background(0);
  //idpAges[0] = 76;
}

void draw() {
  background(0);
  /*
  int myAge = idpAges[0];
   println(myAge);
   
   ellipse(100,100, myAge, myAge);
   
   int myOtherAge = idpAges[1];
   
   ellipse(150, 100, myOtherAge, myOtherAge);
   
   ellipse(200, 100, idpAges[2], idpAges[2]);
   ellipse(250, 100, idpAges[3], idpAges[3]);
   ellipse(300, 100, idpAges[4], idpAges[4]);
   */
  int xPos = 100;
  int xSpace = 50;
  int arraySize = idpAges.length;
  println(arraySize);
  for (int index = 0; index < arraySize; index++) { //index+=10 means index=index+10
    int thisAge = idpAges[index];
    ellipse(xPos + xSpace*index, 200, thisAge, thisAge);
  }
}
