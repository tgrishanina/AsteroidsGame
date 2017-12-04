Spaceship bob;
Stars [] star;
Asteroid [] flyer;
public void setup() 
{
  size(300,300);
  star = new Stars[250];
  bob = new Spaceship();
  flyer = new Asteroid[5];
  for (int i = 0; i < star.length; i++){
    star[i] = new Stars((int)(Math.random()*300),(int)(Math.random()*300));
  }
  for (int i = 0; i < flyer.length; i++){
    flyer[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < star.length; i++){
    star[i].show();
  }
  for (int i = 0; i < flyer.length; i++){
    flyer[i].move();
    flyer[i].show();
    flyer[i].accelerate(0.1);
  }
  bob.move();
  bob.show();
}
public void keyPressed(){
  if (key == '1'){
    bob.accelerate(2.0);
  }
  if (key == '2'){
    bob.turn(30);
  }
  if (key == '3'){
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setPointDirection((int)(Math.random()*361));
    bob.setX((int)(Math.random()*301));
    bob.setY((int)(Math.random()*301));
    }
}