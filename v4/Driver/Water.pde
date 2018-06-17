public class Water extends Item {
  private int _thirstModifier; 
  public Water() {
    super("Water",loadImage("waterbottle.png"));
    _thirstModifier = 10;
  }
  
  public int getModifier() {
    return _thirstModifier;
  }
  
  public void drink(Player p) {
    p.setThirst(p.getThirst() + _thirstModifier);
  }
    
}
