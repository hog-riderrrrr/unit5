void pause() {
  background(0);

  textSize(20);
  text("press p to resume", 500, 350);


  if (pkey == true) {
   mode = game;
   pkey = false;
  }

  
}

void pauseclicks () {
}
