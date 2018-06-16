//DIFFERENT STATES 
int state = 0; 
int value = 0; 
final static int STARTER = 0; 
final static int EARTH = 1; 
final static int STATS = 2; 

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
  else if (state == 2) {
    background(0); 
    color(255); 
    textAlign(CENTER); 
    text("hunger: "+p.getHunger(),width/2,height/2-60); 
    text("thirst: "+p.getThirst(),width/2,height/2-30); 
    text("money: "+p.getMoney(),width/2,height/2);
    text("planets visited: "+p.getPlanets(),width/2,height/2+30);
    text("miles: "+p.getMiles(),width/2,height/2+60); 
  }
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
  if (key== 's')
    state = 2;
  if (state == 2 && key == RETURN || key == ENTER)
    state = 1; 
}
