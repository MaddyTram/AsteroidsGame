class Spaceship extends Floater  
{
  public Spaceship() {
    corners = 4;
    xCorners = new int[] {-8, 16, -8, -2};
    yCorners = new int[] {-8, 0, 8, 0};
    myCenterX = 300;
    myCenterY = 300;
    myColor = 255;
    myYspeed = 0;
    myXspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace() {
    myCenterX = (Math.random() * 600);
    myCenterY = (Math.random() * 600);
    myYspeed = 0;
    myXspeed = 0;
    myPointDirection = Math.random() * 361;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
