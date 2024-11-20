class Spaceship extends Floater  
{
  public Spaceship() {
    corners = 4;
    xCorners = new int[] {-8, 16, -8, -2};
    yCorners = new int[] {-8, 0, 8, 0};
    myCenterX = 200;
    myCenterY = 200;
    myColor = 255;
    myYspeed = 0;
    myXspeed = 0;
    myPointDirection = 0;
  }
  public void setDirection(int x) {
    myPointDirection += x;
  }
  public double getDirection() {
    return myPointDirection;
  }
}
