class Blast extends GameObject {

  PVector direction;
  int timer;
  int t;
  float vx, vy;
  Blast(float x, float y) {
    size = 30;
    timer = 25;
    lives = 1;
    loc = new PVector(x, y);
    t= 300;
    vx = random(-5, 5);
    vy = random(-5, 5);
    velocity = new PVector(vx, vy);
    velocity.setMag(5);
  }


  void show() {
    noStroke();
    fill(255, (random(0)), 0, t);
    circle( loc.x, loc.y, 5);
  }

  void act() {
    super.act();
    t = t -10;

    timer --;
    if (timer == 0) {
      lives = 0;
    }
  }
}
