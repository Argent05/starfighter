class Star{
  
 // instance variables
 float x,y,vx,vy,size;
 color c;
 int lives;
 
 Star() {
   
  x = random(0,width); 
  y = 0;
  vx = 0;
  size = random(1,5);
  vy = size;
  c = #FFFFFF;
  lives = 1; 
   
   
   
   
   
   
   
   
   
   
 }
  
  void act() {
    x += vx;
    y += vy;
    
    if (y> 800){
     lives = 0; 
    }
    
  }
  
  void show(){
    fill(c);
    square(x,y,size);
    
  }
  
  
  
  
  
  
}
