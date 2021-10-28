void setup() {
    size(1024, 768);
    noStroke();
    fill(0);
}

void draw() {
    background(255);

    pushMatrix();

    /* move coordinate system around */
    rotate(PI/8);
    translate(mouseX, mouseY);

    PVector mLocal = new PVector(10, 20);
    fill(0, 127, 255);
    circle(mLocal.x, mLocal.y, 100);

    /* transform local to global position ( with current transform matrix ) */
    PVector mWorld = transformToGlobal(mLocal);

    popMatrix();

    fill(255, 127, 0);
    circle(mWorld.x, mWorld.y, 50);
}

PVector transformToGlobal(PVector pLocal) {
    PVector mWorld = new PVector();
    PMatrix m = getMatrix();
    m.mult(pLocal, mWorld);
    return mWorld;
}
