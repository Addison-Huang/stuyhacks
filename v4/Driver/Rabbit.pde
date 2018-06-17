public class Rabbit extends Item {
  private int _hungerModifier;
  public Rabbit() {
    super("Rabbit");
    _hungerModifier = 10;
  }
  
  public int getModifier() {
    return _hungerModifier;
  }
}
    
