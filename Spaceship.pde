class Spaceship extends Floater{
  public Spaceship(){
    corners = 3;

    xCorners = new int[] {-10, 6, 6};
    yCorners = new int[] {0, 6, -6};

    myColor = 255;

    myCenterX = 375;
    myCenterY = 375;

    myXspeed = 0;
    myYspeed = 0;

    myPointDirection = 0;
    
    
  }
  public void setXspeed(double x){
    myXspeed = x;
  }
  public void setYspeed(double Y){
    myYspeed = Y;
  }
  public void setX(double x){
    myCenterX = x;
  }
  public void setY(double Y){
    myCenterY = Y;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
