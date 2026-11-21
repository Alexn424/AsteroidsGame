class Asteroid extends Floater{
  private int turnSpeed;
  public Asteroid(){
    corners = 10;

    xCorners = new int[] {-8, -5, -2, 2, 7, 10, 6, 3, -1, -7};
    yCorners = new int[] {0, 5, 8, 6, 9, 2, -3, -8, -6, -4};
    
    myCenterX= (int)(Math.random()*750);
    myCenterY = (int)(Math.random()*750);
    
    myColor = 150;
    int valX = (int)(Math.random()*5)-3;
    if (valX == 0) valX = -1;
    int valY = (int)(Math.random()*5)-3;
    if (valY == 0) valY = -1;
    myXspeed = valX;
    myYspeed = valY;

    myPointDirection = 0;
    turnSpeed = (int)(Math.random()*5)-3;
  }
  
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
    if (turnSpeed == 0)turnSpeed = 1;
    turn(turnSpeed);
  }
  public void setX(double x){
    myCenterX = x;
  }
  public void setY(double Y){
    myCenterY = Y;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  
}
