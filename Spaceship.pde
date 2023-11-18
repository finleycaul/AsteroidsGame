class Spaceship extends Floater
{
  public Spaceship(){
   corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    myCenterX = 300;
    myCenterY = 300;
    myColor = color(255,255,255);
  }
  public double getmyCenterX(){return myCenterX;}
  public double getmyCenterY(){return myCenterY;}
  public double getmyPointDirection(){return myPointDirection;}
  public double getmyXspeed(){return myXspeed;}
  public double getmyYspeed(){return myYspeed;}
   public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    bob.turn(Math.random()*361);
  }

}
