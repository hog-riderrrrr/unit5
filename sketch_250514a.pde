int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;
int gamemode;
final int square = 1;
final int circle = 2;
float player1y;
float player2y;
float ballx;
float bally;
float vx;
float vy;
float ishowspeed1, ishowspeeddown;
float ushowspeed1, ushowspeeddown;
boolean wkey, skey, upkey, downkey;


void setup() {
  size(1000, 800);
  mode = game;
  player1y = 400;
  player2y = 400;
  ballx = 500;
  bally = 400;
  vx = 4;
  vy = 4;
}

void draw() {

  background(0);

  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Mode erro: " + mode);
  }
}
