class Bullet extends Floater  
{
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.myCenterX;
    myCenterY = theShip.myCenterY;
    myXspeed = theShip.myXspeed;
    myYspeed = theShip.myYspeed;
    myPointDirection = theShip.getPointDirection();
    accelerate(6);
  }
   public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public void show() {
    noStroke();
    fill(#FC2E2E);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
