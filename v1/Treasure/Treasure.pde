public class Treasure {
  private int type;
  private color c;
  private int value;
  
  public Treasure(int t) {
    type = t;
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
  }
}
      
