//Player player = new Player(400, 400);
ArrayList<Obstacles> tables = new ArrayList<Obstacles>();
ArrayList<NPC> npc = new ArrayList<NPC>();
boolean go = true;
int clock = 0;
void setup() {
  background(0);
  size(800, 950);
  frameRate(60);
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
}
void draw() {
  fill(0, 75, 75);
  rect(0, 0, 800, 1000);
  for (int i = 0; i < tables.size(); i++) {
    tables.get(i).display();
  }
}
