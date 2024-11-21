//your variable declarations here
Spaceship bob = new Spaceship();
Star[] sky = new Star[200];
public void setup() 
{
  //your code here
  size(400, 400);
  for(int i = 0; i < 200; i++) {
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < sky.length; i++) {
    sky[i].show();
  }
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
