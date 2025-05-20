void keyPressed() {
  if (key == 'w'|| key == 'W') wkey = true;
  if (key == 's' || key =='S') skey = true;
  if (key == 's' && player1y == 800) skey = false;
}

void keyReleased() {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key =='S') skey = false;
}
