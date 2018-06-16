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


  //default constructor
  public Planet() {
    numItems = int(random(10));
    id = int(random(10000));
    food = int(random(10));
    water = int(random(10));
    distance = int(random(10));
    mine = new Mine();
    col = int(random(255));
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

  public boolean isVisited() {
    return visited;
  } 

  public void setVisited() {
    visited = true;
  }
  //augments index by 1
  public void changeInd() {
    planetInd += 1;
  }
}
