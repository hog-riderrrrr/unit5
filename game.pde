void game() {
  fill(255);
  noStroke();
  
  fill(255, 255, 255);
  
  

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
  distancex2 = ballx - 950;
  distancey2 = bally - player2y;
  distance1 = sqrt(sq(distancex1) + sq(distancey1));
  distance2 = sqrt(sq(distancex2) + sq(distancey2));
  
    //collision
 if (distance1 <= 50) {  
    vx = (ballx - 0) / constant;
    vy = (bally - player1y) / constant;
  }
  if (distance2 <= 50) { 
    vx = (ballx - 1000) / constant;
    vy = (bally - player2y) / constant;
    
  }
  

  if (wkey == true) {
    player1y = player1y - playerspeed;
  }
  if (skey == true) player1y = player1y + playerspeed;

  if (upkey == true) player2y = player2y - playerspeed;
  if (downkey == true) player2y = player2y + playerspeed;
  

  
  
  
} //end of circle

//scoring
textSize(50);
fill(255, 255, 255, 100);
text(player1point, width/4, 100);
text(player2point, 3 * width/4, 100);


if(ballx >= 980){
  player1point = player1point + 1;
  
}

if(ballx <= 0) {
  player2point = player2point + 1;
}

if(player1point == maxpoint || player2point == maxpoint){
  
  
  mode = gameover;
  player1point = 0;
  player2point = 0;
  
}
  
}

void gameclicks() {
}
