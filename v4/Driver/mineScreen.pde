
void mineUpdate(Mine x) {
  background(0);
    for (Block[] blo: x.getBlocks()) { 
      for (Block b: blo) {
        fill(b.getColor());
        rect(b.getX(),b.getY(),60,60);
         if ((b.getX() == p.getXcor()) && (!b.getVisited()) &&b.getY() == p.getYcor()) {
          p.setMoney(p.getMoney()+b.getValue());
          b.setColor(color(0, 0, 0));
          b.setType(0);
          b.setValue(0);
          b.setVisited(true);
          if (p.getHunger() > 75) {
            p.setHunger(p.getHunger() - 1);
          }
          else if (p.getHunger() > 50) {
            p.setHunger(p.getHunger() -1.5);
          }
          else if (p.getHunger() > 25) {
            p.setHunger(p.getHunger() -2);
          }
          else {
            p.setHunger(p.getHunger() -2.5);
          }
            
        }
      } 
    }
    p.update();
}
