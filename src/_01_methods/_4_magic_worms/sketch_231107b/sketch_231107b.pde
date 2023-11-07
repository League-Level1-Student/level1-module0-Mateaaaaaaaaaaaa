static final int WIDTH = 600;
static final int HEIGHT = 400;

@Override
  public void settings() {
  size(WIDTH, HEIGHT);
  //  background(5, 5, 5);
}

@Override
  public void setup() {
  background(5, 5, 5);
  frameRate(5);
}

@Override
  public void draw() {
  for (int i=0; i<300; i++) {
    ellipse(random(WIDTH), random(HEIGHT), 10, 10);
  }
}

/*********************** DO NOT MODIFY THE CODE BELOW ********************/
float frequency = 0.001f;
float noiseInterval = PI;

void makeMagical() {
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);
  noStroke();
}

float getWormX(int i) {
  return map(noise(i * noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i * noiseInterval + 1 + frameCount * frequency), 0, 1, 0, height);
}
