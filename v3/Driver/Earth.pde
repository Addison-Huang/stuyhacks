PImage back, rocket, eric;  

void homeSetup() {
  back = loadImage("grass.png");
  rocket = loadImage("slowRocket.png"); 
  background(0); 
} 

void homeDraw() { 
   image(back,0,0,width,height); 
   image(rocket,.7*width,100,300,300); 
   p.update(); 
} 
