void setup(){
  size(800,400);
}

void draw(){
  background(200);
  
  int spaceX = 50;
  for(int index = 0; index < 10; index = index + 1){
    int myModulo = index%4;
    if(myModulo == 1){
      fill(255,0,0);
    }
    else if(myModulo == 2 || myModulo == 3){
      fill(0,0,255);
    }
    else if(myModulo == 0){
      fill(0,255,0);
    }
    rect(50+spaceX*index, 200, 25, 25);
  }
}
