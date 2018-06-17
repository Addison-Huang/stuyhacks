import java.util.ArrayList;

public class Planet {  
  //instance variables
  private int id;
  private int food;
  private int water;
  private color col;
  private double distance;
  private boolean visited;
  private ArrayList<Item> items;
  private Mine mine;
  private int numItems;
  //index of planet in the ArrayList
  private int planetInd; 
  private PImage img;


  //default constructor
  public Planet() {
    numItems = int(random(10));
    id = int(random(10000));
    food = int(random(10));
    water = int(random(10));
    distance = int(random(10));
    mine = new Mine();
    col = int(random(255));
    //planetInd=0;
    visited = false;
    items = new ArrayList<Item>();
    for (int i = 0; i < numItems; i ++) {
      int which = int(random(2));
      if (which == 1) {
        Item r = new Rabbit();
        items.add(r);
      } else {
        Item w = new Water();
        items.add(w);
      }
    }
    img = null;
  }
  
    public Planet(int n) {
    numItems = int(random(10));
    id = int(random(10000));
    food = int(random(10));
    water = int(random(10));
    distance = int(random(10));
    mine = new Mine();
    col = int(random(255));
    planetInd = id; 
    visited = false;
    items = new ArrayList<Item>();
    for (int i = 0; i < numItems; i ++) {
      int which = int(random(2));
      if (which == 1) {
        Item r = new Rabbit();
        items.add(r);
      } else {
        Item w = new Water();
        items.add(w);
      }
    }
    if (n == 0) 
      img = loadImage("alien.jpg");
     else if (n == 1)
       img =  loadImage("atlantis.jpg"); 
            else if (n == 2)
       img = loadImage("pretty.jpg");     
       else if (n == 3)
       img  = loadImage("rustic.png");      
       else if (n == 4)
       img  = loadImage("sugarPlanet.png");      
       else if (n == 5)
       img  = loadImage("mystical.jpg"); 
            else if (n == 6)
       img  = loadImage("creepy.jpg"); 
            else if (n == 7)
       img  = loadImage("child.jpg"); 
            else if (n == 8)
       img  = loadImage("mars.png"); 
            else
       img  = loadImage("dinoWorld.jpg"); 
      
  }

  public int getId() {
    return id;
  }

  public Mine getMine() {
    return mine;
  } 

  public int getFood() {
    return food;
  }

  public int getWater() {
    return water;
  }

  public double getDistance() {
    return distance;
  }

  public int setFood(int f) {
    int foo = food;
    food = f;
    return foo;
  }

  public int setWater(int w) {
    int foo = water;
    water = w;
    return foo;
  }
  
  public PImage getImg() {
    return img; 
  } 

  public boolean isVisited() {
    return visited;
  } 

  public void setVisited() {
    visited = true;
  }
  //augments index by 1
  /*  public void setImg(int i) {
   ArrayList<PImage>image = new ArrayList<PImage>();
   image = getImage();
   img = image.get(i);
   }*/
}
