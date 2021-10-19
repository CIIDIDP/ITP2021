int a = 0;
int b = 1;

void setup() {
}

void draw() {
    int sum = a + b;
    a = b;
    b = sum;
    println(b);
}

/* see [Fibonacci Sequence](https://en.wikipedia.org/wiki/Fibonacci_number) */
