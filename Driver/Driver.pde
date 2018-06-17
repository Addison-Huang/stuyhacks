import processing.sound.*; 

SoundFile file; 
String audioName = "music.mp3"; 
String path; 

//DIFFERENT STATES 
int state = 0; 
int value = 0; 
int oldState = 0; 
Mine m;
final static int STARTER = 0; 
final static int EARTH = 1; 
final static int STATS = 2; 
final static int MENU = 3; 
final static int MINE = 4; 
final static int PLANET = 5; 
final static int ENDLOSETRAVEL = 6; 
final static int ENDWIN = 7; 
final static int ENDLOSEFOOD = 8;
final static int INSTRUCTIONS = 9;

//different objects
Player p; 

void setup() {
  p = new Player();
  m = new Mine();
  fullScreen();
  background(0);
  homeSetup(); 
  menuSetup();
  planetSetup();
  
  path = sketchPath(audioName); 
  file = new SoundFile(this, path); 
  file.play(); 
}

void draw() { 
  if (state == STARTER) {
    starterDraw();
  } else if (state == EARTH) 
    homeDraw(); 
  else if (state == STATS) { 
    background(0); 
    textAlign(CENTER); 
    fill(255);
    text("hunger: "+p.getHunger(), width/2, height/2-60); 
    text("thirst: "+p.getThirst(), width/2, height/2-30); 
    text("money: "+p.getMoney(), width/2, height/2);
    text("num of planets visited: "+p.visitedPlanets.size(), width/2, height/2+30);
    //text("miles: "+p.getMiles(), width/2, height/2+60);
  } else if (state == MENU) {
    textAlign(LEFT);
    menuDraw();
  } else if (state == MINE) {
    clear(); 
    mineUpdate(p.getCurrPlanet().getMine());
  } else if (state == PLANET) { 
    clear(); 
    planetDraw();
  } else if (state == ENDLOSETRAVEL) {
    background(0);
    textAlign(CENTER); 
    text("You attempted to take a journey deep into space. Your aircraft ran out of fuel and you got stuck.", width/2, height/2-90);
    fill(255);
    text("hunger: "+p.getHunger(), width/2, height/2-60); 
    text("thirst: "+p.getThirst(), width/2, height/2-30); 
    text("money: "+p.getMoney(), width/2, height/2);
    text("num of planets visited: "+p.visitedPlanets.size(), width/2, height/2+30);
    //text("miles: "+p.getMiles(), width/2, height/2+60);
    oldState = ENDLOSETRAVEL;
  } else if (state == ENDWIN) {
    background(0);
    textAlign(CENTER); 
    fill(255);
    text("You won my dude because you explored stuff", width/2, height/2-90);
    text("hunger: "+p.getHunger(), width/2, height/2-60); 
    text("thirst: "+p.getThirst(), width/2, height/2-30); 
    text("money: "+p.getMoney(), width/2, height/2);
    text("num of planets visited: "+p.visitedPlanets.size(), width/2, height/2+30);
    //text("miles: "+p.getMiles(), width/2, height/2+60);
    oldState = ENDWIN;
  } else if (state == ENDLOSEFOOD) {
    background(0);
    textAlign(CENTER); 
    fill(255);
    text("You died of exhaustion", width/2, height/2-90);
    text("hunger: "+p.getHunger(), width/2, height/2-60); 
    text("thirst: "+p.getThirst(), width/2, height/2-30); 
    text("money: "+p.getMoney(), width/2, height/2);
    text("num of planets visited: "+p.visitedPlanets.size(), width/2, height/2+30);
    //text("miles: "+p.getMiles(), width/2, height/2+60);
    oldState = ENDLOSEFOOD;
  } else if (state == INSTRUCTIONS) {
    background(0);
    textAlign(CENTER);
    fill(255);
    text("Press s for stats", width/2, height/2-90);
    text("Use the arrow keys to move", width/2, height/2-60); 
    text("Press enter/return to return to the previous location ", width/2, height/2-30); 
    text("Press escape to leave", width/2, height/2);
    text("Visit all of the planets to win", width/2, height/2+30);
    text("You lose if you run out of money or die of hunger or thirst", width/2, height/2+60);
  }
}

void keyPressed() { 
  if (key == ESC)
    exit();
  if (key == RETURN || key == ENTER) { 
    if (state == STARTER) 
      state=EARTH;
    else if (state == ENDLOSEFOOD || state == ENDLOSETRAVEL) {
      p = new Player();
      homeSetup(); 
      menuSetup();
      planetSetup();
      state = STARTER;
    }
    else if (state != EARTH) 
      state = oldState;
  }
  if (key == CODED && (state == EARTH || state == MINE || state == PLANET)) { 
    if ((state == EARTH && (p.getXcor() > .7*width && p.getXcor() < .8*width && p.getYcor() > 100 && p.getYcor() < 400))) {
      oldState = state;
      state = MENU;
      p.setXcor(p.getXcor()+20);
      //p.setYcor(p.getYcor());
    }
    if ((state == PLANET && (p.getXcor() > .1*width && p.getXcor() < .2*width && p.getYcor() > 500 && p.getYcor() < 600))) {
      oldState = state;
      state = MENU;
    }
    if (state == PLANET && (p.getXcor() > .7*width && p.getXcor() < .7*width+300 && p.getYcor() > .7*height && p.getYcor() < .7*height+300)) {
      oldState = state;
      state = MINE;
      p.setXcor(0);
      p.setYcor(0);
    }
    if (oldState == EARTH) {
      oldState = PLANET;
    }
    if (keyCode == UP && p.getYcor()>=60) 
      p.move(0, -60);
    else if (keyCode == DOWN && p.getYcor() <= displayHeight - 60)
      p.move(0, 60); 
    else if (keyCode == LEFT && p.getXcor() >= 60)
      p.move(-60, 0); 
    else if (keyCode == RIGHT && p.getXcor() <= displayWidth - 60)
      p.move(60, 0);
  } 
  //pops up stats
  if (key == 's' && state != STATS) { 
    oldState = state; 
    state = STATS;
  }
  if (key == 'i' && state != INSTRUCTIONS) {
    oldState = state;
    state = INSTRUCTIONS;
  }
  
  if(state==MINE && key== 'm'){
    state=PLANET;
  }
}
