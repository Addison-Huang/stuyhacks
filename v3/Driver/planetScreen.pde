PImage pretty; 
PImage rustic; 
PImage sugarPlanet;
PImage mystical; 
PImage alien; 
PImage atlantis;
PImage creepy; 
PImage child; 
PImage mars;
PImage dinoWorld;
ArrayList<PImage> image; 


void planetSetup() {
  alien = loadImage("alien.jpg");
  atlantis = loadImage("atlantis.jpg"); 
  pretty= loadImage("pretty.jpg"); 
  rustic= loadImage("rustic.png"); 
  sugarPlanet= loadImage("sugarPlanet.png");
  mystical= loadImage("mystical.jpg"); 
  creepy= loadImage("creepy.jpg"); 
  child= loadImage("child.jpg");
  mars= loadImage("mars.png");
  dinoWorld= loadImage("dinoWorld.jpg");
  background(0);

  for (int i=0; i<10; i++) {
    if (i== 0) {
      image.add(alien);
    } else if (i== 1) {
      image.add(atlantis);
    } else if (i== 2) {
      image.add(pretty);
    } else if (i== 3) {
      image.add(rustic);
    } else if (i== 4) {
      image.add(sugarPlanet);
    } else if (i== 5) {
      image.add(mystical);
    } else if (i== 6) {
      image.add(creepy);
    } else if (i== 7) {
      image.add(child);
    } else if (i== 8) {
      image.add(mars);
    } else {
      image.add(dinoWorld);
    }
  }
}

void planetDraw() {
} 
