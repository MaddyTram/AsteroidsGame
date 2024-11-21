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
    bob.accelerate(0.5);
  }
  if(key == 'a') {
    bob.turn(-10);
  }
  if(key == 'd') {
    bob.turn(10);
  }
  if(key == CODED) {
    if(keyCode == SHIFT) {
      bob.hyperspace();
    }
  }
}
