class mario {
  PImage imgc, imga;
  PVector loc, vel;
  float s, b, h;
  mario() {
    loc = new PVector(2, height/2);
    vel = new PVector(5, 0);
    s = 100;
    h = s;
    imgc = loadImage("caitlin running.png");
    imga = loadImage("anita running.png");
  }
  boolean displayCaitlin() {
    image(imgc, loc.x, loc.y, s, h);
    return true;
  }
  boolean displayAnita() {
    image(imga, loc.x, loc.y, s, h);
    return false;
  }
  void move() {
    if (keyPressed && key=='d') {
      //if you press d, you move forward
      loc.add(vel);
    }
    if (keyPressed && key=='a') {
      //if you press a, you move backward
      loc.sub(vel);
    }
  }
  void jump() {
    //if you press w, you will jump into the air
    if (keyPressed && key=='w') {
      vel.set(0, -5);
      loc.add(vel);
      if (loc.y>loc.y-50) {
        vel.set(0, 5);
      }
    } 
    else {
      vel.set(5, 0);
    }
    if (keyPressed && key=='s') {
      vel.set(0, 5);
      loc.add(vel);
    }
  }
  boolean checkRunner(Lion l) {
    if(loc.dist(l.loc) < s/2 + l.h/2) {
      return true;
    }
    else {
      return false;
    }
  }
}
