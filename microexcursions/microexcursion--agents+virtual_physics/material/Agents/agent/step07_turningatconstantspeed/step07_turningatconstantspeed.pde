/*
* the agent
 * step 07 - turning at constant speed.
 *
 * introducing:
 * maximum acceleration
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
  mAgent.velocity.set(1f, 3f);
  mAgent.radius = 15;
  mAgent.maxspeed = 3.5f;
  mAgent.maxacceleration = 0.75f;
}

void draw() {
  background(255);

  mAgent.acceleration.set(random(-0.5f, 0.5f), random(-0.5f, 0.5f));
  mAgent.loop();
  mAgent.draw();
}

class Agent {

  PVector position = new PVector();
  PVector velocity = new PVector();
  PVector acceleration = new PVector();
  float maxspeed = 0;
  float maxacceleration = 0;
  float radius = 0;

  void loop() {
    float myAccelerationSpeed = acceleration.mag();
    if (myAccelerationSpeed > maxacceleration) {
      acceleration.normalize();
      acceleration.mult(maxacceleration);
    }
    velocity.add(acceleration);

    float mSpeed = velocity.mag();
    if (mSpeed > maxspeed) {
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
