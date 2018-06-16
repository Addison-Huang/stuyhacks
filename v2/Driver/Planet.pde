import java.util.ArrayList;

public class Planet{  
  //instance variables
  private int id;
  private int food;
  private int water;
  private color col;
  private double distance;
  private boolean visited;
  private Mine mine;
  
  
  //default constructor
  public Planet() {
    id = int(random(10000));
    food = int(random(10));
    water = int(random(10));
    distance = int(random(10));
    mine = new Mine();
    col = int(random(255));
    visited = false;
  }
  
  public int getId() {
    return id;
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
  
}
