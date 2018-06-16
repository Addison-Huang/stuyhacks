public abstract class Item
{
    protected String _name; 
    protected String _type; 
    protected int ycor;
    protected int xcor;

    //Constructors
    public Item()
    {
        _type = "Item";
    }
    
    public Item(String t) {
      _type = t;
      xcor = int(random(displayWidth/20)) *20;
      ycor = int(random(displayHeight/20)) * 20;
    }
    

    //Accessors
    public String getType() { return _type; }
    
    public int getX() { return xcor;}
    public int getY() { return ycor;}

}
