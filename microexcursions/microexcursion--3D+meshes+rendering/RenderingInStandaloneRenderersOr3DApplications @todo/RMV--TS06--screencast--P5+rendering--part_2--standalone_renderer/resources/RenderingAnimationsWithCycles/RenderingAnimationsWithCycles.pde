import gewebe.*; 
import org.sunflow.*; 


boolean mRecord = false;
int mFrame = 0;

void settings() {
    size(1024, 768, P3D);
}

void setup() {
    noStroke();
    sphereDetail(12);
}

void draw() {
    String mOutputFile = "";
    if (mRecord) {
        RendererCycles.NUMBER_OF_SAMPLES = 10;
        RendererCycles.OUTPUT_IMAGE_FILE_TYPE = RendererCycles.IMAGE_FILE_TYPE_PNG;
        RendererCycles.RENDERING_PROCESS_BLOCKING = true;
        RendererCycles.DEBUG_PRINT_RENDER_PROGRESS = false;
        RendererCycles.BACKGROUND_COLOR.set(0.6f);
        RendererCycles.RENDER_VIEWPORT_SCALE = 0.5f;
        RendererCycles.KEEP_XML_SCENE_FILE = false;
        mOutputFile = "render/cycles-" + nf(mFrame++, 4);
        beginRaw(createGraphics(width, height, RendererCycles.name(), mOutputFile));
    }
    drawScene();
    if (mRecord) {
        endRaw();
    }
}

void keyPressed() {
    if (key == ' ') {
        mRecord = true;
    }
}

int mCandyBoxCounter = 0;

void drawScene() {
    background(50);
    camera(height / 2.0f / 4.0f, height / 4.0f, width / 4.0f, 0, 0, 0, 0, 1, 0);

    /* floor */
    noStroke();
    fill(200);
    rect(-500, -500, 1000, 1000);
    rotateX(frameCount * 0.007f);
    rotateY(frameCount * 0.013f);

    mCandyBoxCounter++;
    float mCandyBoxSize = sin(TWO_PI * mCandyBoxCounter / 240.0f) * 35 ;
    noStroke();
    fill(255, 127, 0);
    box(150 + mCandyBoxSize);

    noStroke();
    fill(255);
    sphere(100);

    translate(-50, 0);
    sphere(80);

    translate(100, 0);
    sphere(90);
}
