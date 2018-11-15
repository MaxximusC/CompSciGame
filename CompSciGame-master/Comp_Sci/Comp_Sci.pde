Player player = new Player(400, 400);
ArrayList<Obstacles> tables = new ArrayList<Obstacles>();
ArrayList<NPC> npc = new ArrayList<NPC>();
boolean go = true;
int clock = 0;
void setup() {
  background(0);
  size(800, 950);
  frameRate(60);
  // Set up front tables
  tables.add(new Obstacles(162, 30, 160, 60)); // Index 0
  tables.add(new Obstacles(72*1, 100, 60, 160)); // Index 1
  tables.add(new Obstacles(72*2+60, 160, 160, 60)); // Index 2
  tables.add(new Obstacles(72*3+220, 160, 160, 60)); // Index 3
  tables.add(new Obstacles(72*4+380, 100, 60, 160)); // Index 4
  tables.add(new Obstacles(72*1, 300, 60, 160)); // Index 5
  tables.add(new Obstacles(72*2+60, 380, 160, 60)); // Index 6
  tables.add(new Obstacles(72*3+220, 380, 160, 60)); // Index 7
  tables.add(new Obstacles(72*4 + 380, 300, 60, 160)); // Index 8
  // Set up lab tables
  tables.add(new Obstacles(60, 492, 120, 420)); // Index 9
  tables.add(new Obstacles(340, 492, 120, 420)); // Index 10
  tables.add(new Obstacles(600, 492, 120, 420)); // Index 11
  // Set up classmates
  npc.add(new NPC(380, 380, 30)); // 10 NPC's
  npc.add(new NPC(380, 400, 35)); // 10 NPC's
  npc.add(new NPC(380, 420, 15)); // 10 NPC's
  npc.add(new NPC(400, 380, 20)); // 10 NPC's
  npc.add(new NPC(420, 380, 60)); // 10 NPC's
  npc.add(new NPC(400, 400, 100)); // 10 NPC's
  npc.add(new NPC(420, 420, 10)); // 10 NPC's
  npc.add(new NPC(360, 380, 25)); // 10 NPC's
  npc.add(new NPC(380, 360, 40)); // 10 NPC's
  npc.add(new NPC(440, 440, 12)); // 10 NPC's
}

void draw() {
  clock++;
  fill(0, 75, 75);
  rect(0, 0, 800, 1000);
  for (int i = 0; i < tables.size(); i++) {
    tables.get(i).display();
  }
  for (int i = 0; i < npc.size(); i++)
  {
    npc.get(i).setTimer(npc.get(i).getTimer() + 1);
    if (npc.get(i).getTimer() >= npc.get(i).getActivity() ) {
      npc.get(i).move();
      npc.get(i).setCount(npc.get(i).getCount() + 1);
      if (npc.get(i).getCount() == npc.get(i).getActivity()) {
        npc.get(i).setTimer(0);
        npc.get(i).setCount(0);
      }
    }
    npc.get(i).display();
  }
  player.display();
}
void mousePressed() {
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      for (int i = 0; i < tables.size(); i++) {
        if (player.getXpos() > tables.get(i).getXpos() && player.getXpos() < tables.get(i).getXpos() + tables.get(i).getSizeX() && player.getYpos() - 3 > tables.get(i).getYpos() && player.getYpos() - 3 < tables.get(i).getYpos() + tables.get(i).getSizeY()) {
          go = false;
        }
      }
      if (go == true) {
        player.setYpos(player.getYpos() - 3);
      }
      go = true;
    }
    if (keyCode == DOWN) {
      for (int i = 0; i < tables.size(); i++) {
        if (player.getXpos() > tables.get(i).getXpos() && player.getXpos() < tables.get(i).getXpos() + tables.get(i).getSizeX() && player.getYpos() + 3 > tables.get(i).getYpos() && player.getYpos() + 3 < tables.get(i).getYpos() + tables.get(i).getSizeY()) {
          go = false;
        }
      }
      if (go == true) {
        player.setYpos(player.getYpos() + 3);
      }
      go = true;
    }
    if (keyCode == LEFT) {
      for (int i = 0; i < tables.size(); i++) {
        if (player.getXpos() - 3 > tables.get(i).getXpos() && player.getXpos() - 3 < tables.get(i).getXpos() + tables.get(i).getSizeX() && player.getYpos() > tables.get(i).getYpos() && player.getYpos() < tables.get(i).getYpos() + tables.get(i).getSizeY()) {
          go = false;
        }
      }
      if (go == true) {
        player.setXpos(player.getXpos() - 3);
      }
      go = true;
    }
    if (keyCode == RIGHT) {
      for (int i = 0; i < tables.size(); i++) {
        if (player.getXpos() + 3> tables.get(i).getXpos() && player.getXpos() + 3 < tables.get(i).getXpos() + tables.get(i).getSizeX() && player.getYpos() > tables.get(i).getYpos() && player.getYpos() < tables.get(i).getYpos() + tables.get(i).getSizeY()) {
          go = false;
        }
      }
      if (go == true) {
        player.setXpos(player.getXpos() + 3);
      }
      go = true;
    }
  }
  /*else {
   if (key == CODED) {
   if (keyCode == UP) {
   for (int i = 0; i < tables.size(); i++) {
   if (tables.get(i).playerHitBoxCheck(player) == true) {
   noMove = true;
   }
   player.setYpos(player.getYpos() - 3);
   }
   if (keyCode == DOWN) {
   player.setYpos(player.getYpos() + 3);
   }
   if (keyCode == LEFT) {
   player.setXpos(player.getXpos() - 3);
   }
   if (keyCode == RIGHT) {
   player.setXpos(player.getXpos() + 3);
   }
   } */
}
