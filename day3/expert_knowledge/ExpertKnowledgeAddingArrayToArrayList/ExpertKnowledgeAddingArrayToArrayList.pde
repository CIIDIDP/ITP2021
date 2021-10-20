import java.util.Collections;

public void setup() {
    String[] mArray = {"d", "e"};

    ArrayList<String> mArrayList = new ArrayList();
    mArrayList.add("A");
    mArrayList.add("B");
    mArrayList.add("C");

    Collections.addAll(mArrayList, mArray);    
    println(mArrayList);
}
