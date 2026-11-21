Star [] stars = new Star [100];
Spaceship ship = new Spaceship();
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
boolean isLeft = false;
boolean isRight = false;
boolean isAccelerate = false;
boolean breaks = false;
boolean hyperspace = false;
public void setup() 
{
  size(750,750);
  background(0);
  

  for (int g = 0; g <100; g++){
      stars[g] = new Star();
    }
  for (int i = 0; i <12; i++){
      asteroids.add(new Asteroid());
    }
  }
  
void keyPressed() {
  if (key == 'a' || key == 'A') isLeft = true;
  if (key == 'd' || key == 'D') isRight = true;
  if (key == ' ') isAccelerate = true;
  if(key == 'r' || key == 'R') breaks = true;
  if(key == 'f' || key == 'f') hyperspace = true;  
}

void keyReleased() {
  if (key == 'a' || key == 'A') isLeft = false;
  if (key == 'd' || key == 'D') isRight = false;
  if (key == ' ') isAccelerate = false;
  if(key == 'r' || key == 'R') breaks = false;
  if(key == 'f' || key == 'f') hyperspace = false;
}

public void draw() 
{
 background(0);
 for (int i = 0; i <asteroids.size(); i++){
      asteroids.get(i).move();
      asteroids.get(i).show();
    }
 for (int i = 0; i < stars.length; i ++){
   stars[i].show();
 }
 for (int i = 0; i <asteroids.size(); i ++){
   if(dist((float)ship.getX(), (float)ship.getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY()) <20){
       asteroids.remove(i);
       i--;
   }
 }
 if (isLeft){
   ship.turn(-6.0);
 }
 if(isRight){
   ship.turn(6.0);
 }
 if(isAccelerate){
   ship.accelerate(-2);
   isAccelerate = false;
 }
 if(breaks){
   if (ship.getXspeed() <0){
     ship.setXspeed(Math.min(ship.getXspeed()+0.2, 0));
   }
   else if (ship.getXspeed() >0){
     ship.setXspeed(Math.max(0, ship.getXspeed()-0.2));
   }
  if (ship.getYspeed() <0){
     ship.setYspeed(Math.min(ship.getYspeed()+0.2, 0));
   }
   else if (ship.getYspeed() >0){
     ship.setYspeed(Math.max(ship.getYspeed()-0.2,0));
   }
  
 }
 if(hyperspace){
   ship.setXspeed(0);
   ship.setYspeed(0);
   ship.turn(Math.random()*360);
   ship.setX(Math.random() * 700+25);
   ship.setY(Math.random()*700+25);
   hyperspace=false;
 }
 ship.move();
 ship.show();
 
}
