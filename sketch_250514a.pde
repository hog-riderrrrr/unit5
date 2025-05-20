int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;
float player1y;
float player2y;
float ballx;
float bally;
float ishowspeed1, ishowspeed2;
float ushowspeed1, ushowspeed2;
boolean wkey, skey, upkey, downkey;


void setup() {
  size(1000, 800);
  mode = game;
  ishowspeed1 = 4;
  ishowspeed2 = -4;
  ushowspeed2 = -4;
  ushowspeed1 = 4;
  
}

void draw() {
  
  background(0);
  
  if(mode == intro){
    intro();
  } else if(mode == game){
    game();
  } else if(mode == pause){
    pause();
  } else if (mode == gameover){
    gameover();
  } else {
    println("Mode erro: " + mode);
  }
  
}
