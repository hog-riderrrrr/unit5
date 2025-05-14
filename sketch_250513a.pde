float ballx = 500;
float bally = 400;
float player1y;
float player2y;
float vx;
float vy;


void setup() {
  size (1000, 800);
  background(0);
  
  player1y = 400;
  player2y = 400;
  vx = 4;
  vy = 4;
}

void draw() {
  background(0);
  noStroke();
  fill(255);
  
  
  
  
  
  
  
  
  //ball mechanics
  rect(ballx, bally, 20, 20);
  ballx = ballx + vx;
  bally = bally + vy;
  if(ballx >= 980){
    vx = vx * -1;
  }
    if(ballx <= 0){
    vx = vx * -1;
  }
    if(bally >= 780){
    vy = vy * -1;
    }
    if(bally <= 0){
    vy = vy * -1;
    }
  
  
}

void keyPressed(){
  if(key == w){
    player1y = player1y - 5;
  }
  if(key == s){
    player1y = player1y + 5;
  }
  
  if(key == CODED) {
  if (key == UP) {
    player2y = player2y - 5;
  }
  if (key == DOWN){
    player2y = player2y + 5;
  }
  
  }
  
  
}
