public class Player {
  private Planet currPlanet; 
  PImage img; 
  private double hunger;
  private int thirst;
  private int money;
  private ArrayList<Planet> visitedPlanets; //planets visited array 
  private int skyMiles;
  private int xcor;
  private int ycor;
  public Player() {
    img = loadImage("eric.png"); 
    hunger = 100;
    thirst = 100;
    money = 10;
    visitedPlanets = new ArrayList<Planet>();
    skyMiles = 0;
    xcor = 200;
    ycor = 200;
  }

  public Planet getCurrPlanet() {
    return currPlanet;
  }

  public void setCurrPlanet(Planet d) {
    currPlanet = d;
  }

  //reprints image with augmented xcor and ycor 
  public void update() { 
    if (visitedPlanets.size()>=10)
      state = ENDWIN; 
        //win screen
    else if (thirst <=0 || hunger <=0)
        state= ENDLOSE;
        //lose screen
    }
    image(img, xcor, ycor, 60, 60);
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
    if (hunger > 100) {
      hunger = 100;
    }
  }

  public void setMoney(int v) {
    money = v;
  }

  public void setXcor(int x) {
    xcor = x;
  }

  public void setYcor(int y) {
    ycor = y;
  }

  public void setThirst(int t) {
    thirst = t;
    if (thirst > 100) {
      thirst = 100;
    }
  }
}
