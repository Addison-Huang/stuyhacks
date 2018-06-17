public abstract class Item
{
  protected String _name; 
  protected String _type; 
  protected int ycor;
  protected int xcor;
  protected PImage image;
  protected boolean used;

  //Constructors
  public Item()
  {
    _type = "Item";
  }

  public Item(String t, PImage img) {
    _type = t;
    image = img;
    used = false;
    xcor = int(random(displayWidth/80)) * 80;
    ycor = int(random(displayHeight/80)) * 80;
  }


  //Accessors
  public String getType() { 
    return _type;
  }

  public int getX() { 
    return xcor;
  }
  public int getY() { 
    return ycor;
  }
  
  public void drawItem() {
    image(image,xcor,ycor,80,80);
    
  } 
  
  public boolean getUsed() {
    return used;
  }
  
  abstract void use(Player p);
}
