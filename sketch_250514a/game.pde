void game() {
  gamestart = true;
  fill(255);
  noStroke();
  
  fill(255, 255, 255);
  
  
//square
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




if(player1y >= 0 && player1y <= 650){
    player1collideup = false;
    player1collidedown = false;
  } else if(player1y <= 0) {
    player1collideup = true;
  } else if(player1y >= 650) {
    player1collidedown = true;
  }
  
  if(player2y >= 0 && player2y <= 650){
    player2collideup = false;
    player2collidedown = false;
  } else if(player2y <= 0) {
    player2collideup = true;
  } else if(player2y >= 650) {
    player2collidedown = true;
  }
  
  
  if (wkey == true && player1collideup == false) {
  ishowspeedup = 12;
  player1y = player1y - ishowspeedup;
  } else if(wkey == true && player1collideup == true) {
  ishowspeedup = 0;
  player1y = player1y - ishowspeedup;
  }
  
  if (skey == true && player1collidedown == false) {
  ishowspeeddown = 12;
  player1y = player1y + ishowspeeddown;
  } else if(skey == true && player1collidedown == true) {
  ishowspeeddown = 0;
  player1y = player1y + ishowspeeddown;
  }
  

 if (upkey == true && player2collideup == false) {
  ushowspeedup = 12;
  player2y = player2y - ushowspeedup;
  } else if(upkey == true && player2collideup == true) {
  ushowspeedup = 0;
  player2y = player2y - ushowspeedup;
  }
 
  if (downkey == true && player2collidedown == false) {
  ushowspeeddown = 12;
  player2y = player2y + ushowspeeddown;
  } else if(downkey == true && player2collidedown == true) {
  ushowspeeddown = 0;
  player2y = player2y + ushowspeeddown;
  }
 

 
  
  //collsion
  
  if(ballx <= 40 && bally >= player1y && bally <= player1y + 180){
    vx = vx * -1;
  }
  if(ballx >= 940 && bally >= player2y && bally <= player2y + 180){
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
  

if(player1y >= 50 && player1y <= 750){
    player1collideup = false;
    player1collidedown = false;
  } else if(player1y <= 50) {
    player1collideup = true;
    player1collidedown = false;
  } else if(player1y >= 750) {
    player1collidedown = true;
    player1collideup = false;
  }
  
  if(player2y >= 50 && player2y <= 750){
    player2collideup = false;
    player2collidedown = false;
  } else if(player2y <= 50) {
    player2collideup = true;
    player2collidedown = false;
  } else if(player2y >= 750) {
    player2collidedown = true;
    player2collideup = false;
  }
  
  
  if (wkey == true && player1collideup == false) {
  ishowspeedup = 12;
  player1y = player1y - ishowspeedup;
  } else if(wkey == true && player1collideup == true) {
  ishowspeedup = 0;
  player1y = player1y - ishowspeedup;
  }
  
  if (skey == true && player1collidedown == false) {
  ishowspeeddown = 12;
  player1y = player1y + ishowspeeddown;
  } else if(wkey == true && player1collidedown == true) {
  ishowspeeddown = 0;
  player1y = player1y + ishowspeeddown;
  }
  

 if (upkey == true && player2collideup == false) {
  ushowspeedup = 12;
  player2y = player2y - ushowspeedup;
  } else if(wkey == true && player2collideup == true) {
  ushowspeedup = 0;
  player2y = player2y - ushowspeedup;
  }
 
  if (downkey == true && player2collidedown == false) {
  ushowspeeddown = 12;
  player2y = player2y + ushowspeeddown;
  } else if(wkey == true && player2collidedown == true) {
  ushowspeeddown = 0;
  player2y = player2y + ushowspeeddown;
  }
 

  

  
  
  
} //end of circle

//text stuff
textSize(50);
fill(255, 255, 255, 100);
text(player1point, width/4, 100);
text(player2point, 3 * width/4, 100);
textSize(20);
text("press p to pause", 500, 350);


//scoring
if(ballx >= 980){
  player1point = player1point + 1;
  
}

if(ballx <= 0) {
  player2point = player2point + 1;
}

//pause the game
if(pkey == true){
 mode = pause;
 pkey = false;
}






//game over
if(player1point == maxpoint || player2point == maxpoint){
  
  
  mode = gameover;
  gamestart = false;
  
}

}
  


void gameclicks() {
  
}
