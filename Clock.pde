class Clock extends Item{
  // Requirement #2: Complete Clock Class

  Clock(float x, float y) {
    super(x,y);
    img = clock;
  }
  
  void display(){
    if (isAlive=true){
      image(clock,x,y,w,h);
    }
  }

  void CheckCollision(Player player){
    if (isAlive=true){
      if(isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
        addTime(CLOCK_BONUS_SECONDS);
        x =y = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen
        isAlive=false;
      }
    }

  }
}
