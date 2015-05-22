PImage shipImage;
PImage heroImage;
PImage enemyImage;
Player player = new Player();
ArrayList<Bullet> bullets;
boolean canShoot = true;
float canShootCounter;
 
int i;

int level;
Game game;


void setup() {
  size(900, 800);
  background(10, 60, 40);
  frameRate(18);
  initGame();
  bullets = new ArrayList<Bullet>();
  player = new Player();

}

void draw() {
  cursor(CROSS);
  background(0,0,250);
  noStroke();
  fill(63,109,210);
  ellipse(width/2-100,0,300,200);
  ellipse(width/2+150,0,300,200);
  ellipse(width/2-300,0,300,200);
  ellipse(width/2-500,0,300,200);
  ellipse(width/2+350,0,300,200);
   player.update();
  for (i = bullets.size()-1; i >= 0; i--) {
    Bullet bullet = bullets.get(i);
    bullet.update();
  }
  game.run();
}

void initGame() {
  game = new Game();
  level = 0;
  loadImages();
}

void loadImages() {
  shipImage = loadImage("ship.png");
  heroImage = loadImage("hero.png");
  enemyImage = loadImage("enemy.png");
}

void mousePressed() {
  game.mousePressedHandler(new PVector(mouseX, mouseY));
}

void mouseMoved() {
  game.mouseMovedHandler(new PVector(mouseX, mouseY));
}

void keyPressed() {
  game.keyCodeHandler(keyCode);
}

