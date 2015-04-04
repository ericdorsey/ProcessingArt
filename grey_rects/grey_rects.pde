int width = 800;
size(800, width);
//noFill();
//stroke(1);
noStroke();

/* 
//Not enough colors
color[] greys = new color[10];
greys[0] = color(96, 96, 96);
greys[1] = color(128, 128, 128);
greys[2] = color(160, 160, 160);
greys[3] = color(192, 192, 192);
greys[4] = color(224, 224, 224);
greys[5] = color(255, 255, 255);
*/

for (int k = 1; k <= 20; k++) {
  for (int i = 0; i < 120; i++) {
    float random_width = random(10, 55);
    float chance = random(0,100);
    int chance2 = int(chance);
    float randgrey = 0;
    if (chance2 < 25) {
      randgrey = random(0,255);
    } else if (chance2 >= 26) {
      randgrey = random(70,255);
    }
    int randgrey2 = int(randgrey);
    println(randgrey2);
    fill(randgrey2, randgrey2, randgrey2);
    float start_spot = random(0, 750);
    rect(start_spot, 0, random_width, width * .95);
  }
  save("vert_line" + k + ".png");
}
