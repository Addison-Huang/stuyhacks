//DIFFERENT STATES 
int state = 0; 
int value = 0; 
final static int STARTER = 0; 
final static int EARTH = 1; 

//different objects
Player p;

void setup() {
  p = new Player(); 
  fullScreen();
  background(0);
  
  starterSetup(); 
  homeSetup(); 
}

void draw() { 
  if (state == 0) 
    starterDraw(); 
  else if (state == 1) 
    homeDraw(); 
} 

void keyPressed() { 
  if (key == ESC)
    exit();
  if (state==0 && (key==RETURN || key == ENTER))
    state=1; 
  if (key == CODED && state == 1) { 
    if (keyCode == UP) 
      p.move(0,-10);
    else if (keyCode == DOWN)
      p.move(0,10); 
    else if (keyCode == LEFT)
      p.move(-10,0); 
    else 
      p.move(10,0); 
  } 
  //pops up stats
  if (key== 's'){
  }
}
