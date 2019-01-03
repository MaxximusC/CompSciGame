class NPC{
  float Xpos;
  float Ypos;
  
  public NPC(float x, float y, int a) { 
    Xpos = x;
    Ypos = y;
  }
  
  void move() {
    
  }
  
  float getXpos() {
    return Xpos;
  }

  float getYpos() {
    return Ypos;
  }
  
  void display() {
    fill (255);
    ellipse(Xpos, Ypos, 25, 25);
  }
}
