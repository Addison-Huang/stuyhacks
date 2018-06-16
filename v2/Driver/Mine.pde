public class Mine {

  private Block[][] blocks;

  public Mine() {
    blocks = new Block[displayWidth/20][displayHeight/20];
    int x = 0;
    int y = 0;
    int type = 4;
    for (int row = 0; row < blocks.length; row++) {
      y += 20;
      for (int col = 0; col < blocks[0].length; col ++) {
        if (row == 0) {
          Block b = new Block(x, y, false, 0);
        } else {
          x += 20;
          if (int(random(100)) < 11) {
            type = int(random(3)) + 1;
          }
          Block b = new Block(x, y, false, type);
          blocks[row][col] = b;
        }
      }
    }
  }
  public Block[][] getBlocks() {
    return blocks;
  }

  public void update(Player p) {
    for (Block[] blo : blocks) {
      for (Block b : blo) {
          fill(b.getColor());
          rect(20,20,b.getX(),b.getY());      
        if ((b.getX() == p.getXcor()) && (!b.getVisited())) {
          p.setMoney(p.getMoney()+b.getValue());
          b.setColor(color(0, 0, 0));
          b.setType(0);
          b.setValue(0);
          b.setVisited(true);
          p.setHunger(p.getHunger() - .5);
        }
      }
    }
  }
}
