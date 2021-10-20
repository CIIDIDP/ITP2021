void setup(){
  size(1000,800);
  background(200);
  rectMode(CENTER);
}

void draw(){
  background(200);
  fill(255,255,255);
  int startX = 100;
  rect(startX*1,200,50,50);
  rect(startX*2,200,50,50);
  rect(startX*3,200,50,50);
  rect(startX*4,200,50,50);
  rect(startX*5,200,50,50);
  
  
  for(int index = 1; index <= 6; index = index+1) {
    rect(startX*index, 300, 50, 50);
  }
  
  for(int posX = 0; posX < 1000; posX = posX + 50) {
    rect(posX, 400, 30, 30);
  }
  
  int posY;
  for(posY = 100; posY < 300; posY = posY + 30){
    rect(800, posY, posY, 20);
  }
  
  int spaceX = 50;
  for(int index = 0; index < 10; index++){ //index++ is the same as index = index+1
    fill(25*index, 0, 0);
    rect(100+spaceX*index, 500, 25,25);
  }
  
  fill(255,255,0);
  for(int diameter = 200; diameter > 50; diameter = diameter - 25){
    ellipse(400,400, diameter, diameter);
    
    rect(600,400, diameter, diameter);
  }
}
