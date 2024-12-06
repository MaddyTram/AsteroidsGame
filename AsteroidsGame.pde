//your variable declarations here
Spaceship bob = new Spaceship();
Star[] sky = new Star[300];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();

public void setup() 
{
  //your code here
  size(600, 600);
  for(int i = 0; i < 300; i++) {
    sky[i] = new Star();
  }
  for(int i = 0; i < 30; i++) {
    rock.add(new Asteroid());
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
    float d = dist((float)(bob.getX()), (float)(bob.getY()), (float)(rock.get(i).getX()), (float)(rock.get(i).getY()));
    if(d < 20) {
      rock.remove(i);
      rock.add(new Asteroid());
    }
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
