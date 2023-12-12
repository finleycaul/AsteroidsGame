ArrayList <Bullet> shots = new ArrayList <Bullet>();
Spaceship bob = new Spaceship();
ArrayList <Asteroid> sue = new ArrayList <Asteroid>();
Star[] nightSky = new Star [200];
public void setup()
{
  size(500,500);
  for (int i = 0;i <nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for (int i = 0;i <=8; i++)
  {
    sue.add(new Asteroid());
  }
  for (int i = 0;i <shots.size(); i++)
  {
    shots.add(new Bullet(bob));
  }
}
public void draw() {
  background(0);
  fill(236,186,247);
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
    for(int i =0; i<sue.size();i++){
      sue.get(i).move();
      sue.get(i).show();
      float d = dist((float)bob.getmyCenterX(), (float)bob.getmyCenterY(), (float)sue.get(i).getX(), (float)sue.get(i).getY());
    if(d<10)
    sue.remove(i);
  }
for (int i = 0; i < shots.size(); i++){
      shots.get(i).show();
      shots.get(i).move();
    }
    for (int i = 0; i < shots.size(); i++){
      for(int h = 0; h < sue.size(); h++){
        float c = dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)sue.get(h).getX(), (float)sue.get(h).getY());
        if(c<10){
          sue.remove(h);
          shots.remove(i);
        }
      }
    }
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
  if(key == 's'){
     shots.add(new Bullet(bob));
  }
}
