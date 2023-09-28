void setup() {
  size(300, 300);
  noLoop();
}

void draw() {
  background(244, 169, 000); 
  int totalRoll = 0;

  for (int i = 15; i <= 225; i += 70) {
    for (int j = 15; j <= 155; j += 70) {
      Die dice = new Die(i, j);
      totalRoll += dice.roll();
      dice.show();
    }
  }
  
  textSize(16);
  fill(0, 0, 0);
  textAlign(CENTER,CENTER);
  text("Total Roll: " + totalRoll, 150, 260);
}

void mousePressed() {
  redraw();
}

class Die {
  int myX, myY, num;

  Die(int x, int y) {
    myX = x;
    myY = y;    
  }

  int roll() {
    num = (int)(Math.random() * 6) + 1;
    
    return num;
  }

  void show() {
    fill(255, 255, 255); 
    rect(myX, myY, 60, 60, 12);
    fill(0, 0, 0);
    
    if (num == 1) {
      ellipse(myX + 30, myY + 30, 10, 10);
    } else if (num == 2) {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 45, myY + 45, 10, 10);
    } else if (num == 3) {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 45, myY + 45, 10, 10);
    } else if (num == 4) {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 45, 10, 10);
      ellipse(myX + 45, myY + 15, 10, 10);
      ellipse(myX + 45, myY + 45, 10, 10);
    } else if (num == 5) {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 45, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 45, myY + 15, 10, 10);
      ellipse(myX + 45, myY + 45, 10, 10);
    } else {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 30, 10, 10);
      ellipse(myX + 15, myY + 45, 10, 10);
      ellipse(myX + 45, myY + 15, 10, 10);
      ellipse(myX + 45, myY + 30, 10, 10);
      ellipse(myX + 45, myY + 45, 10, 10);
    }
    
    fill(255, 255, 255);
  }
}
