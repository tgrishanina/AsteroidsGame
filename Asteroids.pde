class Asteroid extends Floater{
   public void setX(int x){myCenterX = x;};  
  public int getX(){return (int)myCenterX;};   
  public void setY(int y){myCenterY = y;};   
  public int getY(){return (int)myCenterY;};   
  public void setDirectionX(double x){myDirectionX = x;};   
  public double getDirectionX(){return myDirectionX;};   
  public void setDirectionY(double y){myDirectionY = y;};   
  public double getDirectionY(){return myDirectionY;};   
  public void setPointDirection(int degrees){degrees = (int)(Math.random()*361);};   
  public double getPointDirection(){return myPointDirection;};
  private int rotSpeed;
  public Asteroid(){
    myColor = 255;
    rotSpeed = (int)(Math.random()*9-4);
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11+50;
    yCorners[0] = -8+50;
    xCorners[1] = 7+50;
    yCorners[1] = -8+50;
    xCorners[2] = 13+50;
    yCorners[2] = 0+50;
    xCorners[3] = 6+50;
    yCorners[3] = 10+50;
    xCorners[4] = -11+50;
    yCorners[4] = 8+50;
    xCorners[5] = -5+50;
    yCorners[5] = 0+50;
  }
  public boolean collide(int x, int y)
  {
    if(dist((int)myCenterX, (int)myCenterY, x, y) < 20)
    {
      return true;
    }
    else {
      return false;
    }
  }
 public void move(){
    turn(rotSpeed);
    super.move();
  }
}