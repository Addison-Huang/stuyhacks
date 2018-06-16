public class Block {
  private boolean treasure;
  private int xcor;
  private int ycor; 
  
  public Block() {
    treasure = true;
    xcor = 0;
    ycor = 0;
  }
  
  public Block(boolean t, int x, int y) {
    treasure = t;
    xcor = x;
    ycor = y;
  }
  
  public boolean hasTreasure() {
    return treasure;
  }
  
  public int getX() {
    return xcor;
  }
  
  public int getY() {
    return ycor;
  }
  
  public void setX(int x) {
    xcor = x;
  }
  
  public void setY(int y) {
    ycor = y;
  }
  
  public void setTreasure(boolean b) {
    treasure = b;
  }
}
