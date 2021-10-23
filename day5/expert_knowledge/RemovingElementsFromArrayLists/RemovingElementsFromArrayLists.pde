ArrayList<PVector> mCircles;

void setup() {
    size(1024, 768);
    blendMode(SCREEN);

    noStroke();
    fill(255, 7);

    mCircles = new ArrayList();
}

void draw() {
    background(0);

    for (PVector p : mCircles) {
        circle(p.x, p.y, 20);
    }
}

void mouseMoved() {
    PVector mCircle = new PVector();
    mCircle.x = mouseX;
    mCircle.y = mouseY;
    mCircles.add(mCircle);
}

void keyPressed() {
    if (mCircles.size() > 0) {
        int mIndex = int(random(0, mCircles.size()));
        mCircles.remove(mIndex);
    }
}
