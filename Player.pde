class Player {
  PVector location;
  Player() {
    location = new PVector(width/2, height/2);
  }
  void update() {
    if (mousePressed == true) {

      if (canShoot == true) {
        bullets.add( new Bullet());
        canShoot = false;
        canShootCounter = 0;
      }
    }

    if (canShoot == false) {
      canShootCounter ++;

      if (canShootCounter == 10){
        canShoot = true;
      }
    }
  }
}

