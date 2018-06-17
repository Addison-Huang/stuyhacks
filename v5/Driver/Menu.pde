// appears when approach rocket coors
//win if u go to every planet(10) total
private ArrayList<Planet> posPlanets;
private ArrayList<Planet> allPlanets;
private ArrayList<Button> buttons;
PShape[] PLANETS; 
PImage image;//,pretty, rustic, sugarPlanet, mystical, alien, atlantis, creepy, child, mars, dinoWorld;
ArrayList<PImage> images; 


void menuSetup() { 
  // random generation of planets. array of possible stuff to explore
  buttons = new ArrayList<Button>();
  posPlanets = new ArrayList<Planet>();
  allPlanets = new ArrayList<Planet>();
  PLANETS = new PShape[10]; 

  image = loadImage("pretty.jpg");
  Planet planet0 = new Planet(image);
  posPlanets.add(planet0);

  image = loadImage("alien.jpg");
  Planet planet1 = new Planet(image);
  posPlanets.add(planet1);

  image = loadImage("atlantis.jpg"); 
  Planet planet2 = new Planet(image);
  posPlanets.add(planet2);

  image = loadImage("rustic.png");
  Planet planet3 = new Planet(image);
  posPlanets.add(planet3);

  image = loadImage("sugarPlanet.png");
  Planet planet4 = new Planet(image);
  posPlanets.add(planet4);

  image = loadImage("mystical.jpg"); 
  Planet planet5 = new Planet(image);
  posPlanets.add(planet5);

  image = loadImage("creepy.jpg");
  Planet planet6 = new Planet(image);
  posPlanets.add(planet6);

  image  = loadImage("child.jpg");
  Planet planet7 = new Planet(image);
  posPlanets.add(planet7);

  image  = loadImage("mars.png"); 
  Planet planet8 = new Planet(image);
  posPlanets.add(planet8);

  image = loadImage("dinoWorld.jpg");
  Planet planet9 = new Planet(image);
  posPlanets.add(planet9);

  allPlanets = posPlanets;
}

void menuDraw() { 
  background(0);
  strokeWeight(4); 
  stroke(245, 124, 205); 
  fill(color(245, 124, 205));
  textSize(50); 
  text("VISITED PLANETS: ", width/4-200, height/4-50); 
  text("NEW PLANETS: ", 3*width/4-200, height/4-50); 
  //buttons
  buttons = new ArrayList<Button>();
  int h = height/4;
  for (int i = 0; i< posPlanets.size(); i++) {
    Button newButt = new Button(3*width/4-200, h, 200, 50, str(posPlanets.get(i).getId()), posPlanets.get(i));
    buttons.add(newButt);
    h += 70;
  }
  h = height/4; 
  for (int x = 0; x < p.getPlanets().size(); x++) {
    Button newButt = new Button(width/4-200, h, 200, 50, str(p.getPlanets().get(x).getId()), p.getPlanets().get(x));
    buttons.add(newButt);
    h += 70;
  }
  update();
  for (int i = 0; i < buttons.size(); i++) {
    buttons.get(i).update();
  }
  update();
} 


void update() { 
  for (int x = 0; x < posPlanets.size(); x++) { 
    if (posPlanets.get(x).isVisited()) {
      p.addPlanet(posPlanets.remove(x));
    }
  }

  for (int i = 0; i < buttons.size(); i ++) {
    if (mouseX >= buttons.get(i).xcor && mouseX <= (buttons.get(i).xcor + buttons.get(i).wd) && mouseY >= buttons.get(i).ycor && mouseY <= (buttons.get(i).ycor + buttons.get(i).ht)) {
      buttons.get(i).col = 100;
      if (mousePressed) {
        Planet ans = buttons.get(i).planet;
        if (ans.getDistance() < p.getMoney()) {
          ans.setVisited();
          p.setCurrPlanet(ans);
          state = PLANET;
        } else {
          background(0);
          //clear();
          textAlign(CENTER);
          text("You're broke my dude", width/2, height/2-80);
          text("Money: " + p.getMoney(), width/2, height/2-10);
          text("Money needed for planet " + ans.getId() + ": " + ans.getDistance(), width/2, height/2+30);
        }
        //break;
      }
    }
  }
}
