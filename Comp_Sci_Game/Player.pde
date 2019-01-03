class Player{
  float Xpos;
  float Ypos;
  
  public Player(float x, float y){
    Xpos = x;
    Ypos = y;
  }
  
  float getXpos(){
    return Xpos;
  }
  
  float getYpos(){
    return Ypos;
  }
  
  void setXpos(float x){
    Xpos = x;
  }
  
  void setYpos(float y){
    Ypos = y;
  }
  void display(){
    fill(0);
    ellipse(Xpos, Ypos, 25, 25);
  }
}
