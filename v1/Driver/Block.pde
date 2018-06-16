public class Block {
  private int xcor;
  private int ycor; 
  private boolean visited;
  private color c;
  private int value;
  private int type;
  
  public Block(int x, int y, boolean v, int t) {
    type = t;
    xcor = x;
    ycor = y;
    if (t == 1) { //gold
      c = #FFD700;
      value = 10;
    }
    else if (t == 2) { //silver
      c = #C0C0C0;
      value = 5;
    }
    else if (t == 3) { //bronze
      c = #cd7f32;
      value = 1;
    }
    else {            //dirt
      c = #8b4513;
      value = 0;
    }
    visited = v;
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
  
}
