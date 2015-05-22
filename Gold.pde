class Gold{
  PImage gold;
  Gold(){
    gold = loadImage("gold.png");
  }
  void display()
  {
    image(gold,0,height-128);
  }
}
