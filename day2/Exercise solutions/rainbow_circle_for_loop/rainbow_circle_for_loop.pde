
void setup() {
  size(400, 400);
  colorMode(HSB);//<---use HSB if you want to make rainbow coloring easier
  noStroke();
}

void draw() {
  //noLoop();
  for (int i=6; i > -1 ; i--){ //<-- a new way to go through a for loop, by DECREASING i.
    print(i);
    fill(255-255/6*(i),255,255);
    circle(width/2,height/2,(50*i)+50);
  }
}
