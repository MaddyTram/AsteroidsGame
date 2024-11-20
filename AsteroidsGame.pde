//your variable declarations here
Spaceship bob = new Spaceship();
public void setup() 
{
  //your code here
  size(400, 400);
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
}
public void keyPressed() {
  if(key == 'w') {
    bob.setDirection(1);
    bob.accelerate(bob.myPointDirection);
  }
}
