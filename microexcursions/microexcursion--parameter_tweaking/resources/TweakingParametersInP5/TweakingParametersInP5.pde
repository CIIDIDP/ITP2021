void settings() {
    size(1024, 768, P3D);
}

void setup() {
}

void draw() {
    background(50);

    noStroke();
    fill(255, 255, 255);
    float mDiameter = 470;
    ellipse(width/2, height/2, mDiameter, mDiameter);
}
