import processing.pdf.*;
size(800,800);
//How many images do we want
int numImages = 100; 
for (int m = 0; m < numImages; m++) { 
  //Date information for the .PDF and .PNG output
  int y = year();
  int mon = month();
  int d = day();
  int h = hour();
  String am_pm = "";
  if (h < 12) {
    am_pm = "AM";
  } else if (h > 12) {
    am_pm = "PM";
  }
  if (h == 0) {
    h = 12;
  } else if (h > 12) {
    h = h - 12;
  }
  String dateString = y + "-" + mon + "-" + d;
  String theHour = str(h);
  String theMinute = nf(minute(), 2);
  String theSecond = nf(second(), 2);
  String timeString = theHour + "_" + theMinute + "_" + am_pm + "_" + theSecond;
  beginRecord(PDF, "pdf/" + dateString + "_" + timeString + "_.pdf");
  delay(3000); //Allow time for .PDF and .PNG to be created
  background(random(255), random(255), random(255));
  for (int j = 0; j < 10; j++) {
    beginShape();
    curveVertex(0, 0);
    for (int k = 0; k < 10; k++) { //layer depth
      int cvDynamic1 = int(random(150, 700));
      int cvDynamic2 = int(random(100, 700));
      int randomStroke = int(random(1,5));
      strokeWeight(randomStroke);
      int randomOpacity = int(random(180,200));
      fill(random(255), random(255), random(255), randomOpacity);
      curveVertex(cvDynamic1, cvDynamic2);
    }
    endShape();
  }
  save("png/" + dateString + "_" + timeString + "_.png");
  endRecord();
  println();
  println("output at: " + timeString);
}

  
