size(800,800);

for (int m = 0; m < 20; m++) { //How many images do we want
  delay(3000);
  background(random(255), random(255), random(255));
  for (int j = 0; j < 10; j++) {
    println("j: " + j);
    int cv1 = 0;
    beginShape();
    curveVertex(0, 0);
    for (int k = 0; k < 10; k++) {
      int cvDynamic1 = int(random(150, 700));
      int cvDynamic2 = int(random(100, 700));
      println(cvDynamic1, cvDynamic2);
      int randomStroke = int(random(1,5));
      strokeWeight(randomStroke);
      int randomOpacity = int(random(180,200));
      fill(random(255), random(255), random(255), randomOpacity);
      curveVertex(cvDynamic1, cvDynamic2);
    }
    endShape();
  }
  int y = year();
  int mon = month();
  int d = day();
  int h = hour();
  if (h == 0) {
    h = 12;
  } else if (h > 12) {
    h = h - 12;
  }
  int min = minute();
  println();
  String dateString = y + "-" + mon + "-" + d;
  println(dateString);
  //String timeString = h + ':' + nf(min, 2);
  //println(timeString);
  String theHour = str(h);
  //println(theHour);
  String theMinute = nf(min, 2);
  //println(theMinute);
  String timeString = theHour + "_" + theMinute;
  println(timeString);
  save(dateString + "__" + timeString + "_" + nf(second(), 2) + "_.png");
  //save(y + "-" + mon + "-" + d + "_" + h + '_' + nf(min, 2) + "_" + ".png");
}

  
