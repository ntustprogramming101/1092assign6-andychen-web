class Item {
  boolean isAlive;
  float x, y;
  float w = SOIL_SIZE;
  float h = SOIL_SIZE;
  PImage img;

  Item(float x, float y){
    this.x = x;
    this.y = y;
  }

  void display(){
    if (isAlive=true){
      image(cabbage,x,y);
    }
  }
  
  void checkCollision(Player player){
    if(player.health < player.PLAYER_MAX_HEALTH
      && isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
        player.health ++;
        isAlive=false;
        x =y = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen
      }
  }

  
}
