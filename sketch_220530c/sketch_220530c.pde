final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = GAME;
ArrayList <GameObject> engine;
ArrayList < Star> stars;

Starfighter player1;
boolean up, down,left,right,space;
//array game

void setup() {
  
 size(600,600, FX2D); 
  mode = GAME;
  
  stars = new ArrayList<Star>();
  engine = new ArrayList <GameObject>(10000);  //capacity
  player1 = new Starfighter();
}



void draw() {
 int i = engine.size()-1;
 while (i >= 0) {
 GameObject obj = engine.get(i);
   obj.show();
   obj.act();
   if (obj.hasDied()) {
    engine.remove(i); 
     
   }
   i--; 
   
 }

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else {
    println("?");
  }
}
  
  
  
