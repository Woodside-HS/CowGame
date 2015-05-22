
class Game {
  // +++++++++++ Lists of game objects
  ArrayList<Button> buttons  = new ArrayList<Button>();
  ArrayList<Enemy> enemies  = new ArrayList<Enemy>();

  //  Instance varaibles (Properties)  +++++++++++++++++++++++++
  boolean gameStarted = false;
  InfoArea infoArea;
  Hero hero;
  Enemy enemy;
  Ship ship;
  Flock flock;
  Gold gold;

  //  Constructor  +++++++++++++++++++++++++++++++
  Game() {
    // When game constructed, create buttons, flock, areas, and game objects
    makeButtons(); 
    infoArea = new InfoArea(new PVector(750, 0), 200, 800, color(135, 95, 136));
    initGameObjects();
    generateFlock(10);
  }

  //  Methods (Behaviors)  +++++++++++++++++++++++++
  void initGameObjects() {  
    enemy = new Enemy(new PVector(200, 200), new PVector(-3, 3));
    hero = new Hero(new PVector(600, 600), new PVector(0, 0));
    ship = new Ship(new PVector(600, 200), new PVector(0, 0));
    gold = new Gold();
  }
  
  
  void generateFlock(int numBoids) {
    // Declare a flock     
    flock = new Flock();
    // Generate a flock  
    for (int i = 0; i < numBoids; i++) {
      flock.addBoid(new Boid(width/2, height/2));
    }
  }

  void run() {
    infoArea.run();
    hero.run();
    ship.run();
    enemy.run();
    flock.run();
    hero.run();
    gold.display();
  }

  void keyCodeHandler(int kc) {
    // what do we do with keyboard input?
  }

  void mousePressedHandler(PVector mouse) {
    // what do we do when mouse is clicked?
  }

  void mouseMovedHandler(PVector mouseLoc) {
    // what do we do when mouse is moved?
  }

  void makeButtons() {
    // width and heith of game buttons
    int w = 300;
    int h = 100;
    //  add buttons to an array list of buttons with location, size, and color
    //  load buttons into button aray
    buttons.add( new Button("Play", new PVector(width/2, 200), w, h, color(45, 54, 74)));
    buttons.add( new Button("Instructions", new PVector(width/2, 400), w, h, color(45, 54, 74)));
    buttons.add( new Button("Reset?", new PVector(width/2, 200), w, h, color(45, 54, 74)));
  }


} // end Game class

