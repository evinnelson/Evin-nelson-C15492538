class Plane
{
  float x, y, z, w;
  float speedZ = 2;
  float speedW = 2;
 

Plane()
{
  x = 300;
  y = 80;
  w = 80;
  z = 300;
}

void display()
{
  //the first rect is the box the rest is the plane
  rect(z, w, 20, 20);
  rect(x, y, 100, 30);
  rect(x + 48, y - 30, 20, 90);
  fill(255);
  rect(x + 10, y + 5, 20, 20);
  rect(x + 35, y + 5, 20, 20);
  rect(x + 60, y + 5, 20, 20);
}

void update()
{
  //thisis to reset the plane on the oppiset side of the screen
  z += speedZ;
  x += 2;
  if(x >= 700)
  {
   x = -70;
  }
  if(z >= 700)
  {
   z = -70; 
  }
  //this is to drop the box
  if(keyCode == ENTER)
  {
   w += speedW; 
   speedZ = 0;
  }
  //this is to decide where the box lands
  if(w >= random(450, 550))
  {
   speedW = 0;
   canMove = true;
  }
}

}
