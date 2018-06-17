PImage _mine; 

void planetSetup() {
  _mine = loadImage("mine.png"); 
}
  

void planetDraw() {
  background(0); 
  image(p.getCurrPlanet().getImg(),0,0,width,height); 
  image(_mine, (int) (Math.random()*width), (int) (Math.random()*height)); 
} 
