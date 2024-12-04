//your variable declarations here
Spaceship bob = new Spaceship();
Star[] sky = new Star[200];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();

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
  for(int i = 0; i < rock.size(); i++) {
    rock.get(i).move();
    rock.get(i).show();
    float d = dist(bob.getX(), bob.getY(), rock.get(i).getX(), rock.get(i).getY());
  }
}
public void keyPressed() {
  if(key == 'w') {
    bob.accelerate(0.5);
  }
  if(key == 's') {
    bob.accelerate(-0.5);
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
