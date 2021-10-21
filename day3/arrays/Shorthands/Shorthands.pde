void setup() {
    ArrayList<Integer> mList = new ArrayList();
    mList.add(1);
    mList.add(2);
    mList.add(3);
    mList.add(5);
    mList.add(8);
    mList.add(13);

    /* short array list iteration ( also works for arrays ) */
    for (int mValue : mList) {
        println(mValue);
    }

    /* ... is the same as */
    for (int i = 0; i < mList.size(); i++) {
        int mValue = mList.get(i);
        println(mValue);
    }
}
