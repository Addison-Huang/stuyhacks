
void mineUpdate(Mine x) {
  background(0); 
    for (Block[] blo: x.getBlocks()) { 
      for (Block b: blo) { 
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
