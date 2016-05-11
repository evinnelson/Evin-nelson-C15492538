class Player
{

  float x, y;
  float speedX, speedY;
  
  Player()
  {
    x = 100;
    y = 500;
    speedX = 0;
    speedY = 0;
  }

void display()
{
  fill(255, 0, 0);
  rect(x, y, 20, 35);
  rect(x, y, 5, 50);
  rect(x + 15, y, 5, 50);
  ellipse(x + 10, y - 10, 20, 20);
  rect(x - 20, y + 5, 60, 5);
}

void update()
{
if(canMove)

{
 if(left)
{
 speedX = -4;
} 

if(right)
{
 speedX = 4; 
}

if(left == false && right == false)
{
 speedX = 0; 
}

if(up)
{
 speedY = -4;
}

if(down)
{
 speedY = 4; 
}

if(up == false && down == false)
{
 speedY = 0; 
}

 x += speedX;
 y += speedY;
}
}
}

