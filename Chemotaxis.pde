Bacteria [ ] colony; //declare bacteria variables here   

void setup()   
{     
  //initialize bacteria variables here
  size(500, 500);
  colony = new Bacteria [75];
  for (int i=0; i<colony.length; i++)
  {
    colony[i] = new Bacteria ((int)(Math.random()*500), (int)(Math.random()*500));
  }
}   

void draw()   
{    
  //move and show the bacteria   
  background(0);
  for (int i=0; i<colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
}

void mousePressed()
{
  redraw();
}

class Bacteria    
{     
  int myX, myY;
  Bacteria (int x, int y)
  {

    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
  }    
  void move()
  {
    if (mouseX > myX)
    {
      myX = myX-(int)(Math.random()*5);
    } else if (mouseX < myX)
    {
      myX = myX+(int)(Math.random()*5);
    }
    if (mouseY > myY)
    {
      myY = myY-(int)(Math.random()*5);
    } else if (mouseX < myX)
    {
      myY = myY+(int)(Math.random()*5);
    }
    if (myX < 0)
    {
      myX = 0;
    }
    if (myX <= 0 || myX >= 500)
    {
      myX = (int)(Math.random()*500);
    }
    if (myY <= 0 || myY >= 500)
    {
      myY = (int)(Math.random()*500);
    }
    if (mousePressed ==true)
    {
      myX = 250;
      myY = 250;
    }
  }
  void show()
  {
    fill(int(random(256)), int(random(256)), int(random(256)));
    ellipse(myX, myY, 50, 50);
  }
}