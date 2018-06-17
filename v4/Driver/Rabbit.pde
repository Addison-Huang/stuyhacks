public class Rabbit extends Item {
  private int _hungerModifier;
  public Rabbit() {
    super("Rabbit", loadImage("wabbit.png"));
    _hungerModifier = 10;
  }
  
  public int getModifier() {
    return _hungerModifier;
  }
  
  public void eat(Player p) {
    if (!used) {
    p.setHunger(p.getHunger()+_hungerModifier);
    used = true;
    }
}
}
    
