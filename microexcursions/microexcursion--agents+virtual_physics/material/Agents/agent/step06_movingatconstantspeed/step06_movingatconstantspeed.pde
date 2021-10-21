/*
* the agent
 * step 06 - moving at constant speed.
 *
 * introducing:
 * maximum speed
 *
 */

Agent mAgent;

void setup() {
  size(320, 240);
  smooth();
  noFill();
  ellipseMode(CENTER);

  mAgent = new Agent();
  mAgent.position.set(10, 10);
  mAgent.velocity.set(3f, 4f);
  mAgent.radius = 15;
  mAgent.maxspeed = 3.5f;
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
  float maxspeed = 0;
  float radius = 0;

  void loop() {
    velocity.add(acceleration);

    float mySpeed = velocity.mag();
    if (mySpeed > maxspeed) {
      velocity.normalize();
      velocity.mult(maxspeed);
    }
    position.add(velocity);
  }

  void draw() {
    stroke(0, 0, 0);
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
