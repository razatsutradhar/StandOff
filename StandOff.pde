void setup(){
  fullScreen();
  frameRate(120);
}

private Laser a = new Laser(new PVector(500, 500), new PVector(0,1));
private RailGun b = new RailGun(new PVector(500, 500), new PVector(0,1));
//boolean checkLaser = true;

void draw(){
  background(0);
  
   a.drawWeapon();
   b.drawWeapon();

}
