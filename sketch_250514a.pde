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
float player1d, player2d;
float ballx;
float bally;
float balld;
float vx;
float vy;
float ishowspeed1, ishowspeeddown;
float ushowspeed1, ushowspeeddown;
boolean wkey, skey, upkey, downkey;
float playerspeed;
float distance1, distance2;
float distancex1, distancex2, distancey1, distancey2;
float constant;
float player1point, player2point;



void setup() {
  size(1000, 800);
  mode = game;
  gamemode = circle;
  player1y = 400;
  player2y = 400;
  player1d = 100;
  player2d = 100;
  ballx = 500;
  bally = 400;
  balld = 20;
  vx = 4;
  vy = 4;
  playerspeed = 12;
  constant = 12;
  player1point = 0;
  player2point = 0;
  
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
