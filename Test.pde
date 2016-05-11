//There a big where if you press the move key before 
//the box staps falling the box frezes in mid air
//press ENTER to drop the box and arrow keys to move player
Plane Plane;
Clouds [] Clouds;
Player Player;
boolean left, right, up, down, canMove;


void setup()
{
  fill(255);
  Plane = new Plane();
  Player = new Player();
  size(700, 600);
  //thearray to hold the clouds
  Clouds = new Clouds[5];
  Clouds[0] = new Clouds(500, 50);
  Clouds[1] = new Clouds(480, 100);
  Clouds[2] = new Clouds(550, 150);
  Clouds[3] = new Clouds(400, 200);
  Clouds[4] = new Clouds(430, 90);
//canMove is so the player cant move until the box stops falling
//but it didnt fix the bug because it still frezes if you press the keys
  canMove = false;

}

void draw()
{
   background(0, 0, 255);
   fill(0, 255, 0);
   rect(0, 300, 700, 600);
   fill(0);
   Plane.display();
   Plane.update();
   Player.display();
   Player.update();

//this is to display the clouds
  for(int i = 0; i < Clouds.length; i++)
  {
   Clouds[i].display(); 
  }
}
//the key codes used to controll the player
void keyPressed()
{
  if(canMove)
  {
  switch(keyCode)
  {
    case 37:
    left = true;
    break;
    case 38:
    up = true;
    break;
    case 39:
    right = true;
    break;
    case 40:
    down = true;
    break;
  }
}
}

void keyReleased()
{
  if(canMove)
  {
 switch(keyCode)
{
   case 37:
    left = false;
    break;
    case 38:
    up = false;
    break;
    case 39:
    right = false;
    break;
    case 40:
    down = false;
    break;
} 
  }
}

