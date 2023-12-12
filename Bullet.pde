class Bullet extends Floater {
 public Bullet(Spaceship theShip){
   myCenterX = theShip.getmyCenterX();
   myCenterY = theShip.getmyCenterY();
   myXspeed = theShip.getmyXspeed();
   myYspeed = theShip.getmyYspeed(); 
   myPointDirection = theShip.getmyPointDirection();
   accelerate(.6);
 }
 public void show(){
   stroke(204, 0, 153);
   fill(255, 204, 242);
   ellipse((float)myCenterX, (float)myCenterY,10,10); 
 }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
}
  
