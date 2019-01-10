class NPC{
  float Xpos;
  float Ypos;
  int timer = 0;
  float timerStop = random(60, 300);
  float newx = 0;
  float newy = 0;
   // ** The Mover tracks location, velocity, and acceleration 
  PVector location;
  PVector velocity;
  PVector acceleration;
  // ** The Mover's maximum speed
  float topspeed;
  
  public NPC() { 
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    topspeed = 2;
  }
  
  void move() {
    timer++;
    if (timer == timerStop){
    timer = 0;
    newx = random(10, 25);
    newy = random(10, 25);  
    }
    PVector spot = new PVector(newx, newy);
    PVector acceleration = PVector.sub(spot,location);
    // ** Set magnitude of acceleration
    // acceleration.setMag(0.05);    
    // ** Velocity changes according to acceleration
    velocity.add(acceleration);
    // ** Limit the velocity by topspeed
    velocity.limit(topspeed);
    // ** Location changes by velocity
    location.add(velocity);
  }
  
  float getXpos() {
    return Xpos;
  }

  float getYpos() {
    return Ypos;
  }
  
  void display() {
    fill (255);
    ellipse(location.x, location.y, 25, 25);
  }
}
