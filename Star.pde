class Star //note that this class does NOT extend Floater
{
  private int mySize, myX, myY;
  public Star(){
    mySize = (int)(Math.random()*8)+10;
    myX= (int)(Math.random()*750);
    myY = (int)(Math.random()*750);
  }
  public void show(){
    textSize(mySize);
    textAlign(CENTER);
    text('*', myX, myY);
  }
}
