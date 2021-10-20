import controlP5.*;

ControlP5 mControlP5;
float mCircleColor = 255;

void settings() {
    size(1024, 768);
}

void setup() {
    mControlP5 = new ControlP5(this);
    mControlP5.addBang("change_color");
}

void draw() {
    background(50);

    noStroke();
    fill(mCircleColor);
    ellipse(width/2, height/2, 300, 300);
}

void change_color() {
    mCircleColor = random(0, 255);
}
