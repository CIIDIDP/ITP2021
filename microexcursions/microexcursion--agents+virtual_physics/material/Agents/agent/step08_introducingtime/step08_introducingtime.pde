/*
* the agent
 * step 08 - introducing time.
 *
 * introducing:
 * delta time
 *
 */

Agent mAgent;
Timer mTimer;

void setup() {
  size(320, 240);
  smooth();
  noFill();
  ellipseMode(CENTER);

  mAgent = new Agent();
  mAgent.position.set(320, 240);
  mAgent.velocity.set(0f, 0f);
  mAgent.acceleration.set(-4.0f, -3.0f);
  mAgent.radius = 15;
  mAgent.maxspeed = 100f;
  mAgent.maxacceleration = 2000f;

  mTimer = new Timer();
}

void draw() {
  background(255);

  goToMouse(mAgent);

  mAgent.loop(mTimer.getDeltaTime());
  mAgent.draw();

  mTimer.loop();
}

void goToMouse(Agent theAgent) {
  /*
    * this method is just for quickly observing different
   * acceleration settings.
   * actually the code below already describes a first
   * simple behavior. the agent adjust its acceleration
   * vector to 'go to' the mouseposition.
   * enjoy.
   */
  PVector myAccelerationDirection = new PVector();
  myAccelerationDirection.set(mouseX, mouseY);
  myAccelerationDirection.sub(mAgent.position);
  theAgent.acceleration.set(myAccelerationDirection);
}

class Agent {

  PVector position = new PVector();
  PVector velocity = new PVector();
  PVector acceleration = new PVector();
  float maxspeed = 0;
  float maxacceleration = 0;
  float radius = 0;

  void loop(float theDeltaTime) {

    float mAccelerationSpeed = acceleration.mag();
    if (mAccelerationSpeed > maxacceleration) {
      acceleration.normalize();
      acceleration.mult(maxacceleration);
    }

    PVector mTimerAcceleration = new PVector();
    mTimerAcceleration.set(acceleration);
    mTimerAcceleration.mult(theDeltaTime);

    velocity.add(mTimerAcceleration);

    float mSpeed = velocity.mag();
    if (mSpeed > maxspeed) {
      velocity.normalize();
      velocity.mult(maxspeed);
    }

    PVector mTimerVelocity = new PVector();
    mTimerVelocity.set(velocity);
    mTimerVelocity.mult(theDeltaTime);

    position.add(mTimerVelocity);
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

class Timer {
  float mTime = millis();
  float mDeltaTime = 0;

  float getDeltaTime() {
    return mDeltaTime;
  }

  void loop() {
    mDeltaTime = (millis() - mTime)/1000.0f;
    mTime = millis();
  }
}
