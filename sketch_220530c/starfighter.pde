class Starfighter {
  
 float x,y,vx,vy,size;
 color c;
 int lives;
 
 Starfighter() {
  x = width/2;
  y = height/2;
  vx = 0;
  vy = 0;
  size = 40;
  c = #FF0000;
  lives = 3;
 }
  
   void act() {
    if (up) vy = -5;
    if (down) vy = 5;
    if (right) vx = 5;
    if (left) vx= -5;
     
     if (!up && !down) vy = vy*0.9;
     if (!left && !right) vx = vx*0.9;
     
     x+= vx;
     y+= vy;
   }
   
 
  
  
  void show() {
   fill(c);
   square(x,y,size);
  }
  
  
  
  
}
