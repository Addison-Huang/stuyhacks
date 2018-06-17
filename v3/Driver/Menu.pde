// appears when approach rocket coors
//win if u go to every planet(10) total
private ArrayList<Planet> posPlanets;
private ArrayList<Button> buttons;
PShape[] PLANETS; 

void menuSetup() { 
  // random generation of planets. array of possible stuff to explore
  buttons = new ArrayList<Button>();
  posPlanets = new ArrayList<Planet>(); 
  PLANETS = new PShape[10]; 
  for (int x = 0; x < 10; x++) { 
    Planet b = new Planet();
    b.setImg(image.get(x));
    
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
  //buttons
  int h = height/4;
  for(int i = 0; i< posPlanets.size(); i++) {
    Button newButt = new Button(3*width/4-200,h,200,50,str(posPlanets.get(i).getId()));
    buttons.add(newButt);
    h += 70;
  }
  h = height/4; 
  for (int x = 0; x < p.getPlanets().size(); x++) {
    Button newButt = new Button(width/4-200,h,200,50,str(p.getPlanets().get(x).getId()));
    buttons.add(newButt);
    h += 70;
    /*
    fill(color(245,124,205));
    rect(width/4-200,i, 180, 20); 
    fill(color(0));
    text(p.getPlanets().get(x).getId(),width/4-135,i);
    i += 30;
    */
  }
    update();
  for (Button b: buttons) {
    b.update();
  }
} 


void update() { 
  for (int x = 0; x < posPlanets.size(); x++) { 
    if(posPlanets.get(x).isVisited())
      p.addPlanet(posPlanets.remove(x)); 
  } 
} 
