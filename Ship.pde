 
 class Ship{
  PVector loc, vel, acc, dir;
  
  Ship(PVector location, PVector velocity){
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
      scale(.5);
      rotate(angle);
      //image(shipImage, 0, 0 );
      popMatrix();
  }
  
  void update(){
    
  }
  
  void checkEdges(){
    
  }
  
}
