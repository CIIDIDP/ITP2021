PImage mPortrait;
ArrayList<Fragment> mFragments = new ArrayList();

void setup() {
    size(400, 400);
    mPortrait = loadImage("portrait-dennisppaul-bw.png");
}

void draw() {
    background(255);
    //image(mPortrait, 0, 0);

    int x = (int)random(0, mPortrait.width);
    int y = (int)random(0, mPortrait.height);
    float c = brightness(mPortrait.get(x, y));
    final float mThreshold = 127;
    if (c < mThreshold) {
        Fragment f = new Fragment();
        f.x = x;
        f.y = y;
        f.radius = random(1, 5);
        mFragments.add(f);
    }

    for (int i=0; i<mFragments.size(); i++) {
        Fragment f = mFragments.get(i);
        fill(0, 0, 0);
        noStroke();
        f.draw();
    }
}

void keyPressed() {
    String[] mOutputFile = new String[mFragments.size()];
    for (int i=0; i<mFragments.size(); i++) {
        Fragment f = mFragments.get(i);
        mOutputFile[i] = f.toString();
    }
    saveStrings("portrait"+frameCount+".txt", mOutputFile);
    saveFrame("portrait"+frameCount+".png");
}

class Fragment {
    float x;
    float y;
    float radius;

    void draw() {
        ellipse(x, y, radius*2, radius*2);
    }

    String toString() {
        return "ellipse("+x+", "+y+", "+radius*2+", "+radius*2+");";
    }
}
