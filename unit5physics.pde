float ballx, bally, balld;
float vx, vy;
float ax, ay;
float gravity;

void setup() {
  size(800, 800);
  ballx = width/2;
  bally = height/2;
  balld = 50;

  vx = 3;
  vy = 5;

  ax = 0;
  ay = 1;

  gravity = -0.85;
}

void draw() {
  background(255);
  strokeWeight(5);
  stroke(0);
  fill(255, 0, 0);
  circle(ballx, bally, balld);


  ballx += vx;
  bally += vy;

  vx += ax;
  vy += ay;


  if (bally <= 25) {
    vy = vy * gravity;
    bally = balld/2;
  }
  if (bally >= height - balld/2) {
    vy = vy * gravity;
    bally = height - balld;
  }
  if (ballx <= 25) {
    vx = vx * gravity;
    ballx = balld/2;
  }
  if (ballx >= width - balld/2) {
    vx = vx * gravity;
    ballx = width - balld/2;
  }
}
