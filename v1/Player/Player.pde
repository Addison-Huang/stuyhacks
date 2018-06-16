public class Player {
  
  private int hunger;
  private int thirst;
  private int money;
  private ArrayList<Planet> allPlanets;
  private int skyMiles;
  
  public Player() {
    hunger = 100;
    thirst = 100;
    money = 1000;
    allPlanets = new ArrayList<Planet>;
    miles = 0;
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
    return miles;
  }
    
}
