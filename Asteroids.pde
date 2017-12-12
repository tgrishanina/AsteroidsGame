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
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myCenterX = (int)(Math.random()*100);
    myCenterY = (int)(Math.random()*100);
    myPointDirection = 0;
    myDirectionX = (Math.random()*4 - 2);
    myDirectionY = (Math.random()*4 - 2);
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