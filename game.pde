void game(){
  fill(255);
  noStroke();
  ballx = 500;
  bally = 400;
  player1y = 400;
  player2y = 400;
  
  
  rect(20, player1y, 20, 50);
  rect(960, player2y, 20, 50);
  
  square(ballx, bally, 20);
  
  if(skey == true){
   player1y = player1y + ishowspeed1;
  }
  if(wkey == true) player1y = player1y + ishowspeed2;
  
  
  
}

void gameclicks(){
  
  
}
