class Enemy{
  
  PVector loc, vel, acc, dir;
  
  Enemy(PVector location, PVector velocity){
    loc = location;
    vel = velocity;
    acc = new PVector(0, 0);
  }
  
  
  void run(){
    display();
    update();
    checkEdges();
  }
  
  void display(){
     float angle = radians(0);
      pushMatrix();
      translate(loc.x, loc.y);
      scale(.4);
      rotate(angle);
      //image(enemyImage, 0, 0 );
      popMatrix();
  }
  
  void update(){
    
  }
  
  void checkEdges(){
    
  }
  
}
