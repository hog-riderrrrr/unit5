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



  if (wkey == true) {
    player1y = player1y - playerspeed;
  }
  if (skey == true) player1y = player1y + playerspeed;

  if (upkey == true) player2y = player2y - playerspeed;
  if (downkey == true) player2y = player2y + playerspeed;
  
  
  //collsion
  
  if(ballx <= 40 && bally >= player1y && bally <= player1y + 180){
    vx = vx * -1;
  }
  if(ballx >= 960 && bally >= player2y && bally <= player2y + 180){
    vx = vx * -1;
  }
  
} //end of square

//circle
if(gamemode == circle){
  
  circle(0, player1y, player2d);
  circle(1000, player2y, player2d);
  circle(ballx, bally, balld);
  
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
  
  distancex1 = ballx - 50;
  distancey1 = bally - player1y;
  distancex2 = 950 - ballx;
  distancey2 = player2y - ballx;
  distance1 = sqrt(sq(distancex1) + sq(distancey1));
  distance2 = sqrt(sq(distancex2) + sq(distancey2));
  
  

  if (wkey == true) {
    player1y = player1y - playerspeed;
  }
  if (skey == true) player1y = player1y + playerspeed;

  if (upkey == true) player2y = player2y - playerspeed;
  if (downkey == true) player2y = player2y + playerspeed;
  
  //collision
  if(distance1 <= 60) {
    vx = vx * -1;
  }
  if(distance2 <= 60){
    vx = vx * -1;
  }
  
  
  
  
} //end of circle
  
}

void gameclicks() {
}
