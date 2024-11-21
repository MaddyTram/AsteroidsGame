class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
  }
  public void show() {
    fill(#FFF9B2);
    noStroke();
    ellipse(myX, myY, 3.5, 3.5);
  }
}
