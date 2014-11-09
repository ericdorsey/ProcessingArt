size(750, 750);
background(255,255,255);
ellipseMode(CENTER);
noStroke();
for (int i = 1; i <= 10; i++) {
  background(255,255,255);
  for (int k = 0; k < 300; k++) {
    float j = random(100);
    float randomSize = random(100,250);
    //println("randomSize: " + randomSize);
    float randomPosition1 = random(0,750);
    float randomPosition2 = random(0,750);
    float randomColor1 = random(1,254);
    float randomColor2 = random(50,254);
    float randomColor3 = random(50,254);
    float randomOpacity = random(50,155);
    fill(randomColor1, randomColor1, randomColor1, randomOpacity);
    ellipse(randomPosition1, randomPosition2, randomSize, randomSize);
  }
println(i); 
save("bwCircle_" + i + ".png");
}
println("Done.");

