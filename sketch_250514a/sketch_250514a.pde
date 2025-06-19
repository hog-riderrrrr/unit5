import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



Minim minim;
AudioPlayer theme, live, press, win;

int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;
final int choosemode = 5;
final int numplayer = 6;
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

boolean wkey, skey, upkey, downkey, pkey;
float ishowspeedup, ishowspeeddown, ushowspeedup, ushowspeeddown;
float distance1, distance2;
float distancex1, distancex2, distancey1, distancey2;
float constant;
int player1point, player2point;
int maxpoint;
boolean dowepause;
boolean gamestart;
boolean player1collideup, player1collidedown, player2collideup, player2collidedown;




void setup() {
  size(1000, 800);
  minim = new Minim(this);
  theme = minim.loadFile("music.mp3");
  live = minim.loadFile("life.wav");
  press = minim.loadFile("press.wav");
  win = minim.loadFile("gameover.wav");
  
  theme.rewind();
  theme.loop();
  mode = intro;
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
  ishowspeedup = 12;
  ishowspeeddown = 12;
  ushowspeedup = 12;
  ushowspeeddown = 12;
  constant = 12;
  player1point = 0;
  player2point = 0;
  maxpoint = 4;
  pkey = false;
  
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
  } else if (mode == numplayer) {
    numplayer();
  } else {
    println("Mode erro: " + mode);
  }
  
  
  
  if(player1point == maxpoint || player2point == maxpoint){
  
  mode = gameover;
  
}
}
