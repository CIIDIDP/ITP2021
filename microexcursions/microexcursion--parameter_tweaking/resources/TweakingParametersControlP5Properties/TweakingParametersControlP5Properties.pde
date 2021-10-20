import controlP5.*;

ControlP5 mControlP5;
float mCircleRed = 255;
float mCircleGreen = 127;

final String PROP_NAME = "parameters.json";

void settings() {
    size(1024, 768);
}

void setup() {
    mControlP5 = new ControlP5(this);
    mControlP5.addSlider("circle_red").setPosition(50, 50).setRange(0, 255).setValue(255);
    mControlP5.addSlider("mCircleGreen").setPosition(50, 75).setRange(0, 255);

    mControlP5.loadProperties(PROP_NAME);
}

void draw() {
    background(50);

    noStroke();
    fill(mCircleRed, mCircleGreen, 0);
    ellipse(width/2, height/2, 300, 300);
}

void circle_red(float r) {
    mCircleRed = r;
}

void keyPressed() {
    mControlP5.saveProperties(PROP_NAME);
}
