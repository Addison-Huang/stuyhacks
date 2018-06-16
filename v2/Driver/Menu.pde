// appears when approach rocket coors
//win if u go to every planet(10) total
private Planet[] posPlanets;

void menuSetup() { 
  // random generation of planets. array of possible stuff to explore
  posPlanets = new Planet[10]; 
  for (int x = 0; x < 10; x++) { 
    Planet b = new Planet(); 
    posPlanets[x] = b; 
  } 
} 
void menuDraw() { 
  background(0);
  line(width/2, 0, width/2, height); 
  strokeWeight(4); 
  stroke(245,124,205); 
  textSize(50); 
  text("VISITED PLANETS: ", width/4-200, height/4-50); 
  text("NEW PLANETS: ",3*width/4-200, height/4-50); 
} 

void update() { 
} 
