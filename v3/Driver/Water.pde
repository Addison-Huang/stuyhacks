public class Water extends Item {
  private int _thirstModifier; 
  
  public Water() {
    super("Water");
    _thirstModifier = 10;
  }
  
  public int getModifier() {
    return _thirstModifier;
  }
}
