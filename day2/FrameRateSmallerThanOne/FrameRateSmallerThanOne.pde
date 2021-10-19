void setup() {
    frameRate(0.1);
}

void draw() {
    background(255);
    fill(0);
    rect(random(0, width), random(0, height), 10, 10);
}
