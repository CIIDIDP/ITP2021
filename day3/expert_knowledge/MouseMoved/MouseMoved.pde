ArrayList<PVector> mLines = new ArrayList();

void setup() {
    size(1024, 768);
    noFill();
    stroke(0, 63);
}

void draw() {
    background(255);

    beginShape();
    for (PVector mLine : mLines) {
        curveVertex(mLine.x, mLine.y);
    }
    endShape();

    if (!mLines.isEmpty()) {
        mLines.remove((int)random(mLines.size()));
    }
}

void mouseMoved() {
    PVector p = new PVector();
    p.x = mouseX;
    p.y = mouseY;
    mLines.add(p);
}
