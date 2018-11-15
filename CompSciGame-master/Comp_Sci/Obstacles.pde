class Obstacles {
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
  
    boolean playerHitBoxCheck(Player z){
    boolean xbad = false;
    boolean ybad = false;
    if(z.getXpos() > Xpos && z.getXpos() < (Xpos + sizeX)){
      xbad = true;
    }
    else
    {
      xbad = false;
    }
    if(z.getYpos() > Ypos && z.getYpos() < (Ypos + sizeY)){
      ybad = true;
    }
    else
    {
      ybad = false;
    }
    if(xbad == true && ybad == true){
      return true;
    }
   // System.out.println(xbad + " " + ybad);
    return false;
  }
  
  void npcHitBoxCheck(NPC z){
    
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
