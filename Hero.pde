
float x;
float y;
class Hero{
  
  PVector loc, vel, acc, dir;
  PImage hero;
  
  Hero(PVector location, PVector velocity){
    loc = location;
    vel = velocity;
    acc = new PVector(0, 0);
    hero = loadImage("hero.png");
    image(hero,100,100);
    x = mouseX;
    y = mouseY;
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
      rotate(angle);
      //image(heroImage, 0, 0 );
      popMatrix();
  }
  
  void update(){
  hero = loadImage("hero.png");
  image(hero,x,y);
  if(keyPressed && key == 'w'){
    mouseY += -10;
  }
  if(keyPressed && key == 's'){
    mouseY +=10;
  }
  if(keyPressed && key == 'a'){
    mouseX +=-10;
  }
  if(keyPressed && key == 'd'){
    mouseX +=10;
  }
  x = lerp(x, mouseX, 0.1);
  y = lerp(y, mouseY, 0.1); 
  }
  
  void checkEdges(){
    
  }
  
}
