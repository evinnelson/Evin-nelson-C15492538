class Clouds
{
  float x,y,w;
  float speedX;
Clouds(float startX, float startY)
{
 x = startX;
 y = startY;
 w = 50;
 speedX = random(1, 3); 
}

void display()
{
  noStroke();
  fill(255);
  ellipse(x, y, w, w);
  ellipse(x - 25, y, w - 25, w - 25);
  ellipse(x + 25, y, w - 25, w - 25); 
//this is to reset the clouds on the oppiset side
  x -= speedX;
  if(x <= 0)
  {
   x = 700; 
  }
}

 

}
