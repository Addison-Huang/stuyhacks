void mineUpdate(Mine x) {
    for (Block[] blo: x.getBlocks()) { 
      for (Block b: blo) {
        stroke(0);
        fill(b.getColor());
        rect(b.getX(),b.getY(),60,60);
         if ((b.getX() == p.getXcor()) && (!b.getVisited()) &&b.getY() == p.getYcor()) {
          p.setMoney(p.getMoney()+b.getValue());
          b.setColor(color(0, 0, 0));
          b.setType(0);
          b.setValue(0);
          b.setVisited(true);
          if (p.getHunger() > 75) {
            p.setHunger(p.getHunger() - 2);
          }
          else if (p.getHunger() > 50) {
            p.setHunger(p.getHunger() -2.5);
          }
          else if (p.getHunger() > 25) {
            p.setHunger(p.getHunger() -3);
          }
          else {
            p.setHunger(p.getHunger() - 4);
          }
          if (p.getThirst() > 75) {
            p.setThirst(p.getThirst() - 2);
          }
          else if (p.getHunger() > 50) {
            p.setThirst(p.getThirst() - 2.5);
          }
          else if (p.getThirst() > 25) {
            p.setThirst(p.getThirst() -3);
          }
          else {
            p.setThirst(p.getThirst() - 4);
          }
            
        }
      } 
    }
    p.update();
}
