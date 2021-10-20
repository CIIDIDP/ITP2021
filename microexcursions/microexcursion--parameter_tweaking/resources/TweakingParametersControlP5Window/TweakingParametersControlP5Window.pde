import controlP5.*;

float mCircleColor = 255;

void settings() {
    size(1024, 768);
}

void setup() {
    new ControlFrame(this);
}

void draw() {
    background(50);

    noStroke();
    fill(mCircleColor);
    ellipse(width/2, height/2, 300, 300);
}

class ControlFrame extends PApplet {

    ControlP5 mControlP5;

    ControlFrame(PApplet parent) {
        super();
        PApplet.runSketch(new String[]{this.getClass().getName()}, this);

        mControlP5 = new ControlP5(this);
        mControlP5.addSlider("circle color")
            .plugTo(parent, "mCircleColor")
            .setPosition(50, 50)
            .setValue(255)
            .setRange(0, 255);
    }

    void settings() {
        size(256, 768);
    }

    void draw() {
        background(50);
    }
}
