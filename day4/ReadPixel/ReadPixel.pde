void setup() {
    size(1024, 768);
}

void draw() {
    background(255);
    noStroke();
    fill(0, 127, 255);
    circle(width / 2 , height / 2, 50);
    
    color c = get(mouseX, mouseY);

    fill(c);
    stroke(63);
    rect(10, 10, 50, 50);
}
