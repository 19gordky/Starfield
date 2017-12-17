boolean bmove = false;
NormalParticle[] particle = new NormalParticle[500];
void setup()
{
  size(600, 600);
  frameRate(30);
  strokeWeight(2);
  for (int i = 0; i < particle.length; i++) {
    particle[i] = new NormalParticle();
  }
}
void draw()
{
  for (int i = 0; i < particle.length; i++) {
    particle[i].show();
    particle[i].move();
    particle[i].backmove();
  }
}
class NormalParticle
{
  float X, Y, Speed, Angle;
  color Color;
  NormalParticle() {
    X = 300;
    Y = 300;
    Speed = 20 + (float)(Math.random()*5-2.5);
    Angle = (float)(Math.random()*TAU+1);
    Color = color((int)(Math.random()*255+1), (int)(Math.random()*255+1), (int)(Math.random()*255+1));
  }
  void move() {
    if (Y == 0 || X == 0) {
      bmove = false;
    }
    if (bmove == false) {
    X += cos(Angle) * Speed + (float)(Math.random()*20-10);
    Y += sin(Angle) * Speed + (float)(Math.random()*20-10);
    }
  }
  void show() {
    fill(Color);
    ellipse(X, Y, 7, 7);
  }
  void backmove() {
    if (Y > 700 || X > 700 || X < 0-100 || Y < -100) {
      bmove = true;
    }
    if (bmove == true) {
    X -=cos(Angle) * Speed + (float)(Math.random()*20-10);
    Y -=sin(Angle) * Speed + (float)(Math.random()*20-10);
    }
  }
}
interface Particle
{
  void move();
  void show();
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
