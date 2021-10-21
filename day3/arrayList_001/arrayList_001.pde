ArrayList<Integer> coolArray;

void setup(){
  size(600,600);
  background(200);
  
  coolArray = new ArrayList<Integer>();
  
  coolArray.add(12);
  coolArray.add(8);
  coolArray.add(100);
  coolArray.add(0);
  coolArray.add(-25);
  coolArray.add(548);
  
  int numElements = coolArray.size();
  println("Element in pos 1: "+coolArray.get(1) + "  / Number of elements: "+numElements);
  
  println(coolArray);
  
  for(int index = 0; index < numElements; index++){
    int thisValue = coolArray.get(index);
    //println(thisValue);
    
  }
  /*
  coolArray.remove(5);
  println(coolArray.get(0));
  
  numElements = coolArray.size();
  
  println("Number of elements: "+numElements);
 */
}
