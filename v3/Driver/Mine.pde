public class Mine {

  private Block[][] blocks;

  public Mine() {
    blocks = new Block[displayHeight/40][displayWidth/40];
    int x = 0;
    int y = 0;
    int type = 4;
    for (int row = 0; row < blocks.length; row++) {
      y += 40;
      x = 0;
      for (int col = 0; col < blocks[0].length; col ++) {
        //type = 4;
        /*if (row == 0) {
          Block z = new Block(x, y, false, 0);
          blocks[0][col] = z;
        } else {     */  
          if (int(random(100)) < 5) {
            type = int(random(3)) + 1;
          }
          Block b = new Block(x, y, false, type);
          blocks[row][col] = b;
          type = 4;
          x += 40;
        }
      }
    }
  
  public Block[][] getBlocks() {
    return blocks;
  }

}
