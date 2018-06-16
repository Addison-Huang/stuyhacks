
void mineUpdate(Mine x) {
  background(0);
  p.update();
    for (Block[] blo: x.getBlocks()) { 
      for (Block b: blo) {
        stroke(255);
        fill(b.getColor());
        rect(b.getX(),b.getY(),40,40);
         if ((b.getX() == p.getXcor()) && (!b.getVisited()) &&b.getY() == p.getYcor()) {
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
