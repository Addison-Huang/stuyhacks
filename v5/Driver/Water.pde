public class Water extends Item {
  private int _thirstModifier; 
  public Water() {
    super("Water",loadImage("waterbottle.png"));
    _thirstModifier = 10;
  }
  
  public int getModifier() {
    return _thirstModifier;
  }
  
  public void use(Player p) {
    if (!used && (p.getXcor() > getX() && p.getXcor() < getX()+40) && (p.getYcor() > getY() && p.getYcor() < getY()+40) ) {
    p.setThirst(p.getThirst() + _thirstModifier);
    used = true;
  }
  }
    
}
