class Cabbage extends Item{
  
  Cabbage(float x, float y) {
    super(x,y);
    img = cabbage;
  }
  
  void display(){
    if (isAlive=true){
      image(cabbage,x,y);
    }
  }

  void CheckCollision(Player player){
      if(player.health < player.PLAYER_MAX_HEALTH
      && isHit(x, y, w, h, player.x, player.y, player.w, player.h)){

        player.health ++;
        x =y = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen
      }else {isAlive=false;
    }

  }


}
