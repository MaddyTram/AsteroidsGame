//your variable declarations here
Spaceship bob = new Spaceship();
Star[] sky = new Star[300];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> shot = new ArrayList <Bullet>();

public void setup()
{
  //your code here
  size(600, 600);
  for (int i = 0; i < 300; i++) {
    sky[i] = new Star();
  }
  for (int i = 0; i < 30; i++) {
    rock.add(new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
  }
  bob.move();
  bob.show();
  for (int i = 0; i < rock.size(); i++) {
    rock.get(i).move();
    rock.get(i).show();
    float d = dist((float)(bob.getX()), (float)(bob.getY()), (float)(rock.get(i).getX()), (float)(rock.get(i).getY()));
    if (d < 20) {
      rock.remove(i);
      rock.add(new Asteroid());
      i--;
    }
  }
  for (int i = 0; i < shot.size(); i++) {
    shot.get(i).move();
    shot.get(i).show();
    if ((shot.get(i).getX() > 600) || (shot.get(i).getY() > 600)) {
      shot.remove(i);
      i--;
    }
    if ((shot.get(i).getX() < 0) || (shot.get(i).getY() < 0)) {
      shot.remove(i);
      i--;
    }
    for (int j = 0; j < rock.size(); j++) {
      float s = dist((float)(shot.get(i).getX()), (float)(shot.get(i).getY()), (float)(rock.get(j).getX()), (float)(rock.get(j).getY()));
      if (s < 10) {
        rock.remove(j);
        shot.remove(i);
        i--;
        rock.add(new Asteroid());
        break;
      }
    }
  }
}
public void keyPressed() {
  if (key == 'w') {
    bob.accelerate(0.5);
  }
  if (key == 's') {
    bob.accelerate(-0.5);
  }
  if (key == 'a') {
    bob.turn(-10);
  }
  if (key == 'd') {
    bob.turn(10);
  }
  if (key == CODED) {
    if (keyCode == SHIFT) {
      bob.hyperspace();
    }
  }
  if (key == 'r') {
    shot.add(new Bullet(bob));
  }
}
