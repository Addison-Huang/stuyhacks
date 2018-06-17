PImage _mine; 

void planetSetup() {
  _mine = loadImage("mine.png"); 
}
  

void planetDraw() {
  background(0); 
  image(p.getCurrPlanet().getImg(),0,0,width,height);  
  p.getCurrPlanet().updateItems();
  image(_mine, .7*width, .7*height, 300, 300);
  image(rocket,.1*width,500,300,300);
  p.update(); 
} 
