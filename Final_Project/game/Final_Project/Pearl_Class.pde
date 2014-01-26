class Pearl {
  PVector loc, vel, acc;
  PImage pearl;
  float d;
  boolean active;
  Pearl() {
    pearl = loadImage("pearl.png");
    loc = new PVector(random(0, width), -d);
    vel = new PVector(0, 4);
    acc = new PVector(.01, .04);
    d = 10;
  }
  void display() {
    image(pearl, loc.x, loc.y, d, d);
  }
  void fall() {
    vel.add(acc);
    loc.add(vel);
  }
}

