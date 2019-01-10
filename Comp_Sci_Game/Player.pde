class Player{
  float Xpos;
  float Ypos;
  // ** The Mover tracks location, velocity, and acceleration 
  PVector location;
  PVector velocity;
  PVector acceleration;
  // ** The Mover's maximum speed
  float topspeed;
  
  public Player(){
    // ** Start in the center
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    topspeed = 5;
  }
  
  void move(){
    // ** Checks for whether or not the players path is blocked by an obstacle
    /*boolean blocked = false;
    for (int i = 0; i < tables.size(); i++){
      if(location.x - 2 < tables.get(i).getSizeX() && location.y - 2 < tables.get(i).getSizeY() || location.x - 2 < tables.get(i).getSizeX() && location.y + 2 > tables.get(i).getYpos() || location.x + 2 > tables.get(i).getXpos()){
        
      }
    }
    */
    
    // ** Compute a vector that points from location to mouse
    PVector mouse = new PVector(mouseX,mouseY);
    
    if(location.x > mouse.x + 3 || location.y > mouse.y + 3 || location.x < mouse.x - 3 || location.y < mouse.y - 3){
    PVector acceleration = PVector.sub(mouse,location);
    // ** Set magnitude of acceleration
    // acceleration.setMag(0.05);    
    // ** Velocity changes according to acceleration
    velocity.add(acceleration);
    // ** Limit the velocity by topspeed
    velocity.limit(topspeed);
    // ** Location changes by velocity
    location.add(velocity);
    }
  }
  void setXpos(float x){
    Xpos = x;
  }
  
  void setYpos(float y){
    Ypos = y;
  }
  void display(){
    fill(0);
    ellipse(location.x,location.y,25,25);
  }
}
