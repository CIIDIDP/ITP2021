float x = 0;
float y = 0;
float r = 0.0;

void setup() {
    size(1024, 768);
    background(255);
    noStroke();
    fill(0, 127);
}

void draw() {
    for (int i=0; i<100; i++) {
        //float mFill = noise(r) * 255;
        float mFill = random(0, 255);
        fill(mFill);
        square(x, y, 10);

        x += 10;
        r += 0.1;
        if (x > width) {
            x = 0;
            y += 10;
        }
        if (y > height) {
            y = 0;
        }
    }
}
