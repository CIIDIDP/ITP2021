/*
* the agent
 * step 05 - moving smoothly in different directions.
 *
 * introducing:
 * acceleration
 *
 */

Agent mAgent;

void setup() {
  size(640, 480);
  smooth();
  noFill();
  ellipseMode(CENTER);
  frameRate(3);

  mAgent = new Agent();
  mAgent.position.set(320, 240);
  mAgent.velocity.set(3f, 4f);
  mAgent.radius = 15;
}

void draw() {
  background(255);

  mAgent.acceleration.set(random(-1.0f, 1.0f), random(-1.0f, 1.0f));
  mAgent.loop();
  mAgent.draw();
}

class Agent {
  PVector position = new PVector();
  PVector velocity = new PVector();
  PVector acceleration = new PVector();
  float radius = 0;

  void loop() {
    velocity.add(acceleration);
    position.add(velocity);
  }

  void draw() {
    stroke(0);
    ellipse(position.x, position.y, radius, radius);
    stroke(255, 0, 0);
    line(position.x, 
      position.y, 
      position.x + velocity.x, 
      position.y + velocity.y);
    stroke(0, 255, 0);
    line(position.x + velocity.x, 
      position.y + velocity.y, 
      position.x + velocity.x + acceleration.x, 
      position.y + velocity.y + acceleration.y);
  }
}
