class Bullets extends Floater {
  
  public Bullets(Spaceship theShip){
    myColor = 255;
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY(); 
  }
  public void setX(int x){
      myCenterX = x;
   }
   public int getX(){
    return (int)myCenterX;
   }
   public void setY(int y)
   {
      myCenterY = y;
   }
    public int getY(){
      return (int)myCenterY;
    }
     public void setPointDirection(int dRadians)
  {
     myPointDirection = dRadians;
  }
  public double getPointDirection()
  {
    return (double)myPointDirection;
  }
   public void setDirectionX(double x){
      myDirectionX = x;
   }
   public double getDirectionX(){
      return (double)myDirectionX;
   }
   public void setDirectionY(double y)
   {
     myDirectionY = y;
   }
   public double getDirectionY()
   {
      return (double)myDirectionY;
   }

   public void show ()  //Draws circle bullets
  {
    fill(myColor);
    ellipse( (float)myCenterX, (float)myCenterY, 6, 6);
   
  }
  public void move ()   //move the floater in the current direction of travel
  {
    //change the x and y coordinates by myDirectionX and myDirectionY
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
    if(myCenterX < 0)
      bullet.remove(this);
    if(myCenterX > 300)
      bullet.remove(this);
    if (myCenterY < 0)
      bullet.remove(this);  
    if (myCenterY >300)
     bullet.remove(this);
  }
  public boolean collide1(int x, int y)
  {
    if(dist((int)myCenterX, (int)myCenterY, x, y) < 10)
    {
      return true;
    }
    else {
      return false;
    }
  }
}