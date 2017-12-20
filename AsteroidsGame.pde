Spaceship bob;
Stars [] star;
ArrayList <Asteroid> flyers;
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
public void setup() 
{
  size(300, 300);
  star = new Stars[250];
  bob = new Spaceship();
  flyers = new ArrayList <Asteroid>();
  for (int i = 0; i<10; i++)
  {
    flyers.add(i, new Asteroid());
  }

  for (int i = 0; i < star.length; i++) {
    star[i] = new Stars((int)(Math.random()*300), (int)(Math.random()*300));
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < star.length; i++) {
    star[i].show();
  }
  for (int i = 0; i < flyers.size(); i++)
  {
    flyers.get(i).show();
    flyers.get(i).move();
    if (flyers.get(i).collide(bob.getX(), bob.getY()) == true)
     {
     flyers.remove(i);
     }
     for (int i=0; i< bullets.size(); i++){
      bullets.get(i).show();
      bullets.get(i).move();
      }
  }
   bob.move();
   bob.show();
}
public void keyPressed() {
  if (key == '1') {
    bob.accelerate(2.0);
  }
  if (key == '2') {
    bob.turn(30);
  }
  if (key == '3') {
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random()*361));
    bob.setX((int)(Math.random()*301));
    bob.setY((int)(Math.random()*301));
  }
}
