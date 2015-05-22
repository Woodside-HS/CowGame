// +++++++++++++++++++++++++++++++++++++++++++++++++++  InfoArea
class InfoArea  {

  PVector loc;
  int myWidth, myHeight;
  color clr;

  InfoArea(PVector location, int w, int h, color c) {
    loc = location;
    myWidth = w;
    myHeight = h;
    clr = c;
  }

  InfoArea(PVector location, int w, int h ) {
    loc = location;
    myWidth = w;
    myHeight = h;
    clr = color(255);
  }
  
  void run() {
    display();
  }


  void display() {
    int yOffset = 150;
    int xOffset = 15;
    fill(clr);
    stroke(2);
    rect(loc.x, loc.y, myWidth, myHeight, 20);
    textSize(20);
    //Score rectangle
    color c1 = color(65, 45, 65, 110);
    color c2 = color(65, 45, 65);

    pushMatrix();
    translate(loc.x, loc.y);

    makeInfoRect(xOffset, 0*yOffset+40, c1, c2, "Level");
    fill(255, 255, 0);
    text("Some Text", 40, yOffset);
    makeInfoRect(xOffset, 1*yOffset+40, c1, c2, "Score");
    fill(255, 255, 0);
    text("Some Text", 40, 2*yOffset);
    makeInfoRect(xOffset, 2*yOffset+40, c1, c2, "Lives");
    fill(255, 255, 0);
    text("Some Text", 40, 3*yOffset );
    makeInfoRect(xOffset, 3*yOffset+40, c1, c2, "Enemies");
    fill(255, 255, 0);
    text("Some Text", 40, 4*yOffset );
    makeInfoRect(xOffset, 4*yOffset+40, c1, c2, "Highest");
    fill(255, 255, 0);
    text("Some Text", 40, 5*yOffset);
    popMatrix();
  }

  void makeInfoRect(int ox, int oy, color c1, color c2, String txt) {
    noStroke();
    fill(c1);//Shadow at partial opacity
    rect(ox, oy, 120, 120, 15);
    fill(c2);//rect color dark
    stroke(2);
    strokeWeight(4);
    //Button rectangle with border set at 2 pixels
    rect(ox, oy, 120, 120, 15);
    textSize(16);
    fill(220, 220, 30);
    text(txt, ox+30, oy+30 );
  }
} // end InfoArea class

