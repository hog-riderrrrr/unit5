void intro() {
  background(0);
  textSize(100);
  text("PONG", 300, 330);
  
  textSize(40);
  text("choose your game mode", 300, 400);
  
  fill(255);
  
  rect(200, 600, 100, 100);
  circle(750, 650, 100);
  
  
  
  
}



void numplayer() {
  
  
  
}


void introclicks() {
  
  if(dist(mouseX, mouseY, 750, 600) <= 50){
    mode = game;
    gamemode = circle;
  }
  
  if(mouseX >= 200 && mouseX <= 300 && mouseY >= 600 && mouseY <= 700){
    mode = game;
    gamemode = square;
  }
  
  
  
    
}

void numplayerclicks() {
  
}
