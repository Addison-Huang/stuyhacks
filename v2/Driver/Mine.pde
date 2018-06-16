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
          blocks[row][col] = b;
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

}
