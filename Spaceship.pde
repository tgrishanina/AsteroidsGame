class Spaceship extends Floater  
{   
      
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
 Spaceship(){
  corners = 4;
  int[] xCor = {-3,-8,16,-8};
  int[] yCor = {0,8,0,-8};
  xCorners = xCor;
  yCorners = yCor;
  myColor = 255;
  }
}
