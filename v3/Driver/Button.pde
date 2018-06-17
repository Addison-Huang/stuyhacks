public class Button {
  
  public float xcor;
  public float ycor;
  public float wd;
  public float ht;
  public color col;
  public String text;
  
  public Button(float x,float y,float w,float h,String str) {
    xcor = (float)x;
    ycor = y;
    wd = w;
    ht = h;
    col = color(245,124,205);
    text = str;
  }
  
  void update() {
    fill(col);
    rect(xcor, ycor, wd, ht, 7);
    
    fill(color(0));
    textSize(25);
    text(text, xcor+70, ycor, wd + 50, ht + 100);
  }
}
