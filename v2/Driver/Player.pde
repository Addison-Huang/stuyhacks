public class Player {
  
  PImage img; 
  private double hunger;
  private int thirst;
  private int money;
  private ArrayList<Planet> visitedPlanets; //planets visited
  private int skyMiles;
  private int xcor;
  private int ycor;
  
  public Player() {
    img = loadImage("eric.png"); 
    hunger = 100;
    thirst = 100;
    money = 1000;
    visitedPlanets = new ArrayList<Planet>();
    skyMiles = 0;
    xcor = int(random(displayWidth));
    ycor = int(random(displayHeight)); 
  }
  
  public void update() { 
    image(img,xcor,ycor,150,150); 
  } 
  
  public void move(int a, int b) { 
    xcor += a; 
    ycor += b; 
  } 
  
  public double getHunger() {
    return hunger;
  }
  
  public int getThirst() {
    return thirst;
  }
  
  public int getMoney() {
    return money;
  }
  
  public ArrayList<Planet> getPlanets() {
    return visitedPlanets;
  }
  
  public void addPlanet(Planet b) {
    visitedPlanets.add(b); 
  }
  public int getMiles() {
    return skyMiles;
  }
  
  public int getXcor() {
    return xcor;
  }
  
  public int getYcor() {
    return ycor;
  }
  
  public void setHunger(double d) {
    hunger = d;
  }
  
  public int setValue(int v) {
    return v;
  }
  
    
}
