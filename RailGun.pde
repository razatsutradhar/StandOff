class RailGun implements Weapon {
  private boolean isLoaded = true;
  private boolean isLoading = false;
  private PVector origin;
  private PVector direction;
  private int reloadTime = 15 * timeConstant;
  private int damage = 5;
  private float power = 1;

  RailGun(PVector origin, PVector direction) {
    this.origin = origin;
    this.direction = direction;
  }
  PVector getSpeed() {
    return new PVector(0, 0);
  }
  int getReloadDelay() {
    return 15 * timeConstant;
  }
  
  void reload() {
  }
  int getDamage() {
    return 30;
  }
  
  void drawWeapon() {

    if (power < 1) {
      this.isLoaded = false; 
      this.isLoading = true;
    } else if (power >= 1) {
      this.power = 1;
      this.isLoaded = true; 
      this.isLoading = false;
    }

    if (keyPressed && key == 'c' && !isLoading) {
      if (power == 1 && isLoaded) {
        shoot(origin, new PVector(mouseX-origin.x, mouseY-origin.y));
      } else {
        this.isLoading = true;
      }
    } else if (isLoading && power < 1) {
      this.power += .003;
    }
    rect(200, 1075, 100, map(power, 0, 1, 0, -50));
  }
  
  void shoot(PVector origin, PVector direction) {

    strokeWeight(3);
    fill(0,255,0);
    stroke(0,255,0);
    line(origin.x, origin.y, origin.x + direction.x * width, origin.y + direction.y * width); 
    this.power--;
  }
}
