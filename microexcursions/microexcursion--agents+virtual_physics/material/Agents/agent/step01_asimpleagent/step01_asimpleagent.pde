/*
* the agent
 * step 01 - a simple agent.
 *
 * introducing:
 * position
 * velocity
 * radius
 *
 */

Agent mAgent;

void setup() {
  size(320, 240);
  smooth();
  noFill();
  ellipseMode(CENTER);

  mAgent = new Agent();
  mAgent.position.set(width/2, height/2);
  mAgent.velocity.set(14, 18);
  mAgent.radius = 15;
}

void draw() {
  background(255);
  mAgent.draw();
}

class Agent {
  PVector position = new PVector();
  PVector velocity = new PVector();
  float radius = 1;

  void draw() {
    stroke(0);
    ellipse(position.x, position.y, radius, radius);
    stroke(255, 0, 0);
    line(position.x, 
      position.y, 
      position.x + velocity.x, 
      position.y + velocity.y);
  }
}
