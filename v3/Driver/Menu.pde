// appears when approach rocket coors
//win if u go to every planet(10) total
private ArrayList<Planet> posPlanets;
PShape[] PLANETS; 

void menuSetup() { 
  // random generation of planets. array of possible stuff to explore
  posPlanets = new ArrayList<Planet>(); 
  PLANETS = new PShape[10]; 
  for (int x = 0; x < 10; x++) { 
    Planet b = new Planet(); 
    posPlanets.add(b); 
  } 
  
}

void menuDraw() { 
  background(0);
  strokeWeight(4); 
  stroke(245,124,205); 
  fill(color(245,124,205));
  textSize(50); 
  text("VISITED PLANETS: ", width/4-200, height/4-50); 
  text("NEW PLANETS: ",3*width/4-200, height/4-50); 
  update(); 
  //buttons
  textSize(20); 
  int i = height/4; 
  for (int x = 0; x < posPlanets.size(); x++) { 
    fill(color(245,124,205));
    rect(3*width/4-200,i-20, 180, 20); 
    fill(color(0)); 
    text(posPlanets.get(x).getId(),3*width/4-135,i);
    i += 30;
  } 
  i = height/4; 
  for (int x = 0; x < p.getPlanets().size(); x++) { 
    fill(color(245,124,205));
    rect(width/4-200,i, 180, 20); 
    fill(color(0));
    text(p.getPlanets().get(x).getId(),width/4-135,i);
    i += 30;
  } 
} 

void diffButtonHover(){
  if ((mouseX > 3*width/4-200 && mouseX < 3*width/4-20) || (mouseX > width/4-200 && mouseX < width/4-20)) { 
  }  
}

void update() { 
  for (int x = 0; x < posPlanets.size(); x++) { 
    if(posPlanets.get(x).isVisited())
      p.addPlanet(posPlanets.remove(x)); 
  } 
} 
