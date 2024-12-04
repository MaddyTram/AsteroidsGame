class Asteroid extends Floater  
{
  private int rotation;
  public Asteroid() {
    corners = 6;
    xCorners = new int[] {-9, 5, 9, 6, -9, -11};
    yCorners = new int[] {-8, -8, 0, 10, 8, 0};
    myCenterX = Math.random() * 350;
    myCenterY = Math.random() * 350;
    myColor = #9D5218;
    myYspeed = (Math.random()*6) - 3;
    myXspeed = (Math.random()*6) - 3;
    myPointDirection = Math.random() * 361;
    rotation = 5;
  }
  public void move() {
    turn(rotation);
    super.move();
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
