public void setup()
{
  size(800,800);
  
}
public void draw()
{
  background(0);
  myFractal(100,400,400);
}
public void myFractal( int x, int y, int siz){
  stroke(0, 255, 255, 69);
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  triangle(x, y, x + siz/3, y - siz, x + siz, y);
  if(siz > 15)
  {
    myFractal(x - siz/2, y, siz/2);
    myFractal(x, y - siz, siz/2);
    myFractal(x - siz/4, y + siz/2, siz/2);
     myFractal(x + siz, y, siz/2);
    myFractal(x + siz/2, y - siz, siz/2);
    myFractal(x + (4*siz)/5, y + siz/2, siz/2);
  }
}
