
float myNum = 5;
int a =5;

void setup() {
  /*
  if(myNum > 5) {
    println("your number is bigger than 5");
    println("hola");
  }
  
  else {
    println("your number is smaller or equal than 5");
  }
  
  /*
  if(myNum < 5) {
    print("your number is smaller than 5");
  }
  
  if(myNum == 5) {
    print("your number is equal to 5");
  }
  */
  frameRate(1);
}

void draw() {

  a = a+5;
  
  if(a >= 25){
    println("you reached 25");
  }
  
  else {
    println("not yet");
  }

}
