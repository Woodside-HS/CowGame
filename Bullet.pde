class Bullet {

  PVector location;

  float oldPosX, oldPosY, rotation, speed;
  Bullet() {

    location= new PVector(mouseX, mouseY);

    oldPosX = mouseX;
    oldPosY = mouseY;
    rotation = atan2(oldPosY - location.y, oldPosX - location.x) / PI * 180;
    //bullet speed
    speed = 5;
  }
  void update() {

    location.x = location.x - cos(rotation/180*PI)*speed;
    location.y = location.y + sin(rotation/180*PI)*speed;
    ellipse(location.x, location.y, 10, 10);
 

    if (location.x > 0 && location.x < width && location.y > 0 && location.x < height) {
    }
    else {
      bullets.remove(i);
    }
  }
}

