public class Mine {
  
  private Block[][] blocks;
  
  public Mine() {
    blocks = new Block[displayWidth/20][displayHeight/20];
    int x = 0;
    int y = 0;
    boolean tres = false;
    for (int row = 0; row < blocks.length; rows++) {
      y += 20;
      for(int col = 0; col < blocks[0].length; col ++) {
        x += 20;
       if (int(random(100)) < 11) {
        tres = true;
      }
      //need to intiate with their x and y cor
      Block b = new Block(tres, x, y);
      blocks[row][col] = b;
    }
  }
  }
  public int getBlocks() {
    return blocks;
  }
  
  public ArrayList<Treasure> getTreasure() {
    return treasure;
  }
  
}
  
  
    
      
    
