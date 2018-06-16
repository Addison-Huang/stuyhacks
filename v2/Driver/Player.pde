public class Player {
  
  PImage img; 
  private int hunger;
  private int thirst;
  private int money;
  private ArrayList<Planet> allPlanets;
  private int skyMiles;
  private int xcor;
  private int ycor;
  
  
  public Player() {
    img = loadImage("eric.png"); 
    hunger = 100;
    thirst = 100;
    money = 1000;
    allPlanets = new ArrayList<Planet>();
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
  
  public int getHunger() {
    return hunger;
  }
  
  public int getThirst() {
    return thirst;
  }
  
  public int getMoney() {
    return money;
  }
  
  public ArrayList<Planet> getPlanets() {
    return allPlanets;
  }
  
  public int getMiles() {
    return skyMiles;
  }
    
}
