float x = 0;
float y = 0;

void setup() {
    size(1024, 768);
    background(255);
    noStroke();
    fill(0, 127);
}

void draw() {
    for (int i=0; i<100; i++) {
        float mFill = noise(x * 0.001, y * 0.01);
        fill(mFill * 255);
        square(x, y, 10);

        x += 10;
        if (x > width) {
            x = 0;
            y += 10;
        }
        if (y > height) {
            y = 0;
        }
    }
}
