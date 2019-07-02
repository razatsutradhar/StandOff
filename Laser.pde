class Laser implements Weapon{
  private boolean isLoaded = true;
  private boolean isLoading = false;
  private PVector origin;
  private PVector direction;
  private int reloadTime = 4 * timeConstant;
  private int damage;
  private float power = 7 * timeConstant;
  
  
  Laser(PVector origin, PVector direction){
    this.origin = origin;
    this.direction = direction;
  }
  PVector getSpeed(){
    return new PVector(-1, -1);
  }
  int getReloadDelay(){
    return reloadTime;
  }
  
  void reload(){
    
  }
  int getDamage(){
    return 2;
  }
  
  void drawWeapon(){
    
    if(power < 1){
     this.isLoaded = false; 
     this.isLoading = true;
    }else if (power > 6 * timeConstant){
     this.isLoaded = true; 
     this.isLoading = false;
    }
    
    if(keyPressed&&key == ' '&&!isLoading){
      if(power > 1 && isLoaded){
        shoot(origin, new PVector(mouseX-origin.x, mouseY-origin.y));
      }else{
       this.isLoading = true; 
       
      }
    }else if (isLoading && power < 7 * timeConstant){
       this.power += (10.0 / 4);

    }
    rect(100, 1075, 100, map(power, 0, 4 * timeConstant, 0, -50));
  }
  
  void shoot(PVector origin, PVector direction){
    
     strokeWeight(3);
     fill(255,0,0);
     stroke(255,0,0);
     line(origin.x, origin.y, origin.x + direction.x * width, origin.y + direction.y * width); 
     this.power--;
    
  }
}
