public abstract class Item
{
    protected String _name; 
    protected String _type; 

    //Constructors
    public Item(String name)
    {
        _name = name;
        _type = "Item";
    }

    public Item(String name, String type)
    {
        _name = name;
        _type = type;
    }

    //Accessors
    public String getName() { return _name; }
    public String getType() { return _type; }

    //Mutators
    public String setName(String newName)
    {
        String tmp = _name;
        _name = newName;
        return tmp;
    }
}
