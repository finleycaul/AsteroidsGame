//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star [200];
public void setup()
{
  size(500,500);
  for (int i = 0;i <nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
bob.show();
}
public void draw() {
  background(0);
  text("myCenterX: " + bob.getmyCenterX(), 30,10);
  text("myCenterY: " + bob.getmyCenterY(), 30,20);
  text("myPointDirection: " + bob.getmyPointDirection(), 30,30);
  text("myXspeed: " + bob.getmyXspeed(), 30,40);
  text("myYspeed: " + bob.getmyYspeed(), 30,50);
 for (int i = 0; i < nightSky.length; i++){
      nightSky[i].show();
    }
    bob.move();
    bob.show();
  }   
public void keyPressed()
  {
  if(key == 'w'){
     bob.accelerate(10);
  }
  if(key == 'a'){
     bob.turn(-10);
  }
  if(key == 'd'){
     bob.turn(10);
  }
   if(key == ' '){
     bob.hyperspace();
  }
}

