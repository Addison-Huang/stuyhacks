//DIFFERENT STATES 
int state = 0; 
int value = 0; 
int oldState = 0; 
final static int STARTER = 0; 
final static int EARTH = 1; 
final static int STATS = 2; 
final static int MENU = 3; 
//different objects
Player p;

void setup() {
  p = new Player(); 
  fullScreen();
  background(0);
  
  starterSetup(); 
  homeSetup(); 
  menuSetup(); 
}

void draw() { 
  if (state == STARTER) 
    starterDraw(); 
  else if (state == EARTH) 
    homeDraw(); 
  else if (state == STATS) { 
    background(0); 
    textAlign(CENTER); 
    text("hunger: "+p.getHunger(),width/2,height/2-60); 
    text("thirst: "+p.getThirst(),width/2,height/2-30); 
    text("money: "+p.getMoney(),width/2,height/2);
    text("planets visited: "+p.getPlanets(),width/2,height/2+30);
    text("miles: "+p.getMiles(),width/2,height/2+60); 
  } 
  else if (state == 3) 
    menuDraw(); 
} 

void keyPressed() { 
  if (key == ESC)
    exit();
  if (state==STARTER && (key==RETURN || key == ENTER))
    state=EARTH; 
  if (key == CODED && state == EARTH) { 
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
  if (key == 's') { 
    oldState = state; 
    state = STATS; 
  } 
  //if in stats, returns to previous screen 
  if ((key == RETURN || key == ENTER) && (state == STATS || state == MENU))
    state = oldState;  
  if (key == 'm') { 
    oldState = state;
    state = MENU; 
  } 
}
