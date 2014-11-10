void setup() {
  size(750, 750);
  ellipseMode(CENTER);
  noLoop();
  noStroke();
  background(#204152);
}

void drawCircle(int loc1, int loc2, int size) {
  ellipse(loc1, loc2, size, size);
}

void draw() {
  for (int k = 1; k <= 10; k ++) {
    background(#204152);
    for (int i = 0; i <= 800; i++) {
      int loc1 = int(random(750));
      int loc2 = 0;
      int percentChance = int(random(100));
      println();
      println("percentChance: " + percentChance);
      int variation = 0;
      if (percentChance <= 50) {
        variation = +25;
      } else if (percentChance >= 51) {
        variation = -25;
      }
      println("variation: " + variation);
      if ((percentChance >= 0) && (percentChance <= 50)) {
        loc2 = int(random(300 + variation, 750));
        println("first");
      } else if ((percentChance >= 51) && (percentChance <= 85)) {
        loc2 = int(random(200 + variation,750));
        println("second");
      } else if (percentChance >= 86) {
        loc2 = int(random(750 + variation));
        println("third");
      }
      println("loc2 = " + loc2);
      int size = 1;
      int startFill1 = 98;
      int startFill2 = 175;
      int startFill3 = 215;
      for (int j = 0; j <= 50; j++) {
        fill(startFill1, startFill2, startFill3, 250);
        drawCircle(loc1, loc2, size);
        loc1 += 13;
        loc2 += 20;
        size += 1;
        startFill1 = int(startFill1 * (100 + -.38) /100);
        startFill2 = int(startFill2 * (100 + -.38) /100);
        startFill3 = int(startFill3 * (100 + -.38) /100);
      }
    }
  save("sprayCircle_" + k + ".png");
  println();
  println("Done.");
  }
}

