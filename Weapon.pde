interface Weapon{
  PVector getSpeed();
  int getReloadDelay();
  
  void reload();
  
  int getDamage();
  
  void drawWeapon();
  
  int timeConstant = 70;
  
}
