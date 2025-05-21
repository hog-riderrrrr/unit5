void game() {
  fill(255);
  noStroke();

if(gamemode == square) {

  rect(20, player1y, 20, 150);
  rect(960, player2y, 20, 150);

  square(ballx, bally, 20);
  //ball mechanics
  ballx = ballx + vx;
  bally = bally + vy;
  if (ballx >= 980) {
    vx = vx * -1;
  }
  if (ballx <= 0) {
    vx = vx * -1;
  }
  if (bally >= 780) {
    vy = vy * -1;
  }
  if (bally <= 0) {
    vy = vy * -1;
  }
  //ball mechanics



  if (wkey == true) {
    player1y = player1y - 5;
  }
  if (skey == true) player1y = player1y + 5;

  if (upkey == true) player2y = player2y - 5;
  if (downkey == true) player2y = player2y + 5;
  
  
  //collsion
  
  if(ballx <= 40 && bally >= player1y && bally <= player1y + 180){
    vx = vx * -1;
  }
  if(ballx >= 960 && bally >= player2y && bally <= player2y + 180){
    vx = vx * -1;
  }
  
} //end of square

if(gamemode == circle){
  
} //end of circle
  
}

void gameclicks() {
}
