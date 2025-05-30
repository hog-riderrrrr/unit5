void gameover(){
  background(0);
  
  textSize(100);
  text("GAME OVER", 260, 330);
  
  textSize(20);
  if(player1point == maxpoint){
    text("Player 1 wins", 444, 400);
  } else if(player2point == maxpoint){
    text("Player 2 wins", 444, 400);
  }
  
  //text("Player 1 wins", 444, 400);
  
  rect(450, 570, 100, 50, 20);
  rect(450, 630, 100, 50, 20);
  
  textSize(15);
  fill(0, 0, 0);
  text("Restart", 480, 600);
  text("Home Screen", 460, 660);
  
  
  
  
  
  fill(255);
  
  
}


void gameoverclicks() {
  
  if(mouseX >= 450 && mouseX <= 550 && mouseY >= 570 && mouseY <= 620){
    
  }
  
  if(mouseX >= 450 && mouseX <= 550 && mouseY >= 630 && mouseY <= 680){
    
  }
  
  
  
}
