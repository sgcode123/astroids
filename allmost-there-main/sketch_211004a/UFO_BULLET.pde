class UFOBullet extends GameObject {


  PVector direction;
  int timer;

  UFOBullet() {
    timer = 60;
    lives = 1;

    loc = new PVector(myUFO.loc.x, myUFO.loc.y);

    velocity = new PVector(myShip.loc.x - loc.x, myShip.loc.y- loc.y);
    velocity.setMag(10);
    size = 10;
  }


  void show() {

    stroke(255);
    noFill();
    ellipse(loc.x, loc.y, size, size);
  }

  void act() {



    super.act();

    timer --;
    if (timer == 0) {


      lives = 0;
    }
  }
}
