int a = 42;

void setup() {
    frameRate(1);
}

void draw() {
    a += 1;
    println(a);
    int a = 23;
    println(a);
    println("---");
}
