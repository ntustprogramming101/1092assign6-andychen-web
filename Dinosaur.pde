class Dinosaur extends Enemy{
  // Requirement #4: Complete Dinosaur Class
   Dinosaur(float x, float y){
     super(x, y);
   }
   
  final float TRIGGERED_SPEED_MULTIPLIER = 2;
  float currentSpeed=1f;
  
  void display(){
    int direction = (currentSpeed>0)?RIGHT:LEFT;
    
    pushMatrix();
    translate(x,y);
    if(direction == RIGHT){
      scale(1,1);
      image(dinosaur,0,0,w,h);
      //x+= currentSpeed;
    }else{
      scale(-1,1);
      image(dinosaur,-w,0,w,h);
     // x-= currentSpeed;
    }
    popMatrix();
  }
  
  void update(){
    x+= currentSpeed;
    if(x+w > width || x < 0){
      currentSpeed*= -1; 
    }
    if(currentSpeed>0 && y==player.y && player.x>x+w){
      currentSpeed *= TRIGGERED_SPEED_MULTIPLIER;
    }else if(currentSpeed< 0 && y==player.y && player.x<x){
      currentSpeed *= TRIGGERED_SPEED_MULTIPLIER;
     
    }else if(currentSpeed> 0 && y==player.y && player.x<x){
      currentSpeed = 1;
      currentSpeed*= 1; 
     }else if(currentSpeed< 0 && y==player.y && player.x>x+w){
      currentSpeed = -1; 
      currentSpeed*= 1; 
     } 
     //x+= currentSpeed;
    
  }

}
