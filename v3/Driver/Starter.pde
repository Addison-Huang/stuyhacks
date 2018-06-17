int MAX = 255; 
float starterValue = 0.0; 
float starterSpeed = 1.0; 
PFont font; 

void starterSetup() {  
} 

//fades in and out for title of game
void starterDraw() { 
  background(0); 
  float fade = ((sin(radians(starterValue))+1)/2)*MAX;
  starterValue += starterSpeed; 
  textSize(100); 
  fill(color(245, 124, 205), fade); 
  text("GOODBYE WORLD!", 200, height/2); 
  textSize(30);
  text("created by: the next big thing", 200, height/2+50);
} 
