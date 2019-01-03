class Obstacles{
  float Xpos;
  float Ypos;
  float sizeX;
  float sizeY;
  
  public Obstacles(float x, float y, float sizx, float sizy){ // Parameters for x and y position
    Xpos = x;
    Ypos = y;
    sizeX = sizx;
    sizeY = sizy;  
  }
 
  float getXpos(){
    return Xpos;
  }
  
  float getYpos(){
    return Ypos;
  }
  
  float getSizeX(){
    return sizeX;
  }
  
  float getSizeY(){
    return sizeY;
  }
  
  void display(){
    fill(100);
    rect(Xpos, Ypos, sizeX, sizeY);
  }
}
