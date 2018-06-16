PImage back; 
PImage rocket; 
PImage eric; 

void homeSetup() {
  back = loadImage("grass.png");
  rocket = loadImage("slowRocket.png"); 
  eric = loadImage("eric.png"); 
  background(0); 
} 

void homeDraw() { 
   image(back,0,0,width,height); 
   image(eric,100,100,150,150); 
   image(rocket,.7*width,100,300,300);  
} 
