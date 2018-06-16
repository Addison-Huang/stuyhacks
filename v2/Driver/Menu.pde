// appears when approach rocket coors
//win if u go to every planet(10) total
private ArrayList<Planet> posPlanets;

void menuSetup() { 
  // random generation of planets. array of possible stuff to explore
  posPlanets = new ArrayList<Planet>(); 
  for (int x = 0; x < 10; x++) { 
    Planet b = new Planet(); 
    posPlanets.add(b); 
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
  update(); 
  //buttons
  for (int x = 0; x < posPlanets.size(); x++) { 
  } 
  for (int x = 0; x < p.getPlanets().size(); x++) { 
  } 
} 

void update() { 
  for (int x = 0; x < posPlanets.size(); x++) { 
    if(posPlanets.get(x).isVisited())
      p.addPlanet(posPlanets.remove(x)); 
  } 
} 
