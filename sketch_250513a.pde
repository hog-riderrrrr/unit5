float ballx = 500;
float bally = 400;
float vx;
float vy;


void setup() {
  size (1000, 800);
  background(0);
  
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
