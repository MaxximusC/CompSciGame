class NPC {
  float Xpos;
  float Ypos;
  int timer = 0;
  int count = 0;
  int activity; // How often this NPC moves (how many frames between movements)
  public NPC(float x, float y, int a) { 
    Xpos = x;
    Ypos = y;
    activity = a;
  }

  void move() {
    int m = (int)random(-40, 12);
    boolean npcGo = true;
    if (m <= 3) { // Up
      for (int i = 0; i < tables.size(); i++) {
        if (Xpos > tables.get(i).getXpos() && Xpos < tables.get(i).getXpos() + tables.get(i).getSizeX() && Ypos - 1 > tables.get(i).getYpos() && Ypos - 1 < tables.get(i).getYpos() + tables.get(i).getSizeY()) {
          npcGo = false;
        }
      }
      if (Ypos - 1 < 20) {
          npcGo = false;
        }
      if (npcGo == true) {
        Ypos = Ypos - 1;
      }
      System.out.println(m + " " + npcGo);
      npcGo = true;
    }
    else if (m <= 6 && m > 3) { // Down
      for (int i = 0; i < tables.size(); i++) {
        if (Xpos > tables.get(i).getXpos() && Xpos < tables.get(i).getXpos() + tables.get(i).getSizeX() && Ypos + 1 > tables.get(i).getYpos() && Ypos + 1 < tables.get(i).getYpos() + tables.get(i).getSizeY()) {
          npcGo = false;
        }
        if (Ypos + 1 > 930) {
          npcGo = false;
        }
        if (npcGo == true) {
          Ypos = Ypos + 1;
        }
        System.out.println(m + " " + npcGo);
        npcGo = true;
      }
    }
    else if (m <= 9 && m > 6) { // Left
      for (int i = 0; i < tables.size(); i++) {
        if (Xpos - 1 > tables.get(i).getXpos() && Xpos - 1 < tables.get(i).getXpos() + tables.get(i).getSizeX() && Ypos > tables.get(i).getYpos() && Ypos < tables.get(i).getYpos() + tables.get(i).getSizeY()) {
          npcGo = false;
        }
        if (Xpos - 1 < 20) {
          npcGo = false;
        }
        if (npcGo == true) {
          Xpos = Xpos - 1;
        }
        System.out.println(m + " " + npcGo);
        npcGo = true;
      }
    }
    else if (m <= 12 && m > 9) { // Right
      for (int i = 0; i < tables.size(); i++) {
        if (Xpos + 1 > tables.get(i).getXpos() && Xpos + 1 < tables.get(i).getXpos() + tables.get(i).getSizeX() && Ypos > tables.get(i).getYpos() && Ypos < tables.get(i).getYpos() + tables.get(i).getSizeY()) {
          npcGo = false;
        }
        if (Xpos + 1 > 780) {
          npcGo = false;
        }
        if (npcGo == true) {
          Xpos = Xpos + 1;
        }
        System.out.println(m + " " + npcGo);
        npcGo = true;
      }
    }
  }

  float getXpos() {
    return Xpos;
  }

  float getYpos() {
    return Ypos;
  }

  int getCount() {
    return count;
  }

  void setCount(int c) {
    count = c;
  }

  void setTimer(int t) {
    timer = t;
  }

  int getTimer() {
    return timer;
  }

  int getActivity() {
    return activity;
  }

  void display() {
    fill (255);
    ellipse(Xpos, Ypos, 25, 25);
  }
}
