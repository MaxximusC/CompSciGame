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
  
  void playerHitBoxCheck(Player z){
    boolean xbad = false;
    boolean ybad = false;
    float tempX = 0;
    float tempY = 0;
    if(z.getXpos() > Xpos && z.getXpos() < Xpos + sizeX){
      xbad = true;
      tempX = z.getXpos();
    }
    else 
    if(z.getYpos() > Ypos && z.getXpos() < Xpos + sizeY){
      ybad = true;
      tempY = z.getYpos();
    }
    
    if(xbad == true){
      z.setXpos(tempX);
    }
    else
    if(ybad == true){
      z.setYpos(tempY);
    }
  }
  
  void npcHitBoxCheck(NPC z){
    
  }
  
  void display(){
    fill(100);
    rect(Xpos, Ypos, sizeX, sizeY);
  }
}
