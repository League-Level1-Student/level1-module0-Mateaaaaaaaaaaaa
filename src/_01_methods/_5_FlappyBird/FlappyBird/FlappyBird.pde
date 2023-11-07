static final int WIDTH = 800;
static final int HEIGHT = 600;
int birdsX=150;
int birdsY=300;
int birdYVelocity = -10;
int gravity = 1;
int pipeX=800;
int upperPipeHeight = (int) random(100, 400);
int pipeGap=160;
int lowerY = upperPipeHeight + pipeGap;
int lowerPipeHeight= HEIGHT-(upperPipeHeight+pipeGap);
int score=0;
PImage back;
PImage pipeBottom;
PImage pipeTop;
PImage bird;

@Override
  public void settings() {
  size(WIDTH, HEIGHT);
}

@Override
  public void setup() {

  back = loadImage("flappyBackground.jpg");
  pipeBottom = loadImage("bottomPipe.png");
  pipeTop = loadImage("topPipe.png");
  bird = loadImage("bird.png");
  bird.resize(50, 50);
  back.resize(800, 600);
  pipeBottom.resize(60, lowerPipeHeight );
  pipeTop.resize(60, upperPipeHeight);
}




@Override
  public void draw() {
  background(back);
  image (pipeBottom, pipeX, lowerY);
  image (pipeTop, pipeX, 0);
  image (bird, birdsX, birdsY);


  fill(255, 3, 3);
  stroke(255, 3, 3);
  // ellipse(birdsX, birdsY, 50, 50);


  text(score, 50, 50);
textSize(40);
  birdsY+=birdYVelocity;

  birdYVelocity+=gravity;

  pipeX-=5;

  fill(3, 255, 3);
  //  rect(pipeX, 0, 60, upperPipeHeight);

  //  rect(pipeX, lowerY, 60, lowerPipeHeight);

  //ground
  rect(0, HEIGHT-40, WIDTH, 40);

  teleportPipes();
  boolean end = intersectsPipes() ;

  if (birdsY>HEIGHT-40 || end==true ) {
    background(118, 115, 115);

    fill(219, 22, 22);
    textSize(40);
    text("GAME OVER", 280, 300);

textSize(40);
text(score,380, 370);
    stop();
  }
}









public void mousePressed() {
  birdYVelocity = -9;
}

public void teleportPipes() {
  if (pipeX==-60) {
    pipeX= 800;
    upperPipeHeight = (int) random(100, 400);
    score=score+1;
    lowerY = upperPipeHeight + pipeGap;
    lowerPipeHeight=HEIGHT-(upperPipeHeight+pipeGap);
    pipeBottom.resize(60, lowerPipeHeight );
    pipeTop.resize(60, upperPipeHeight);
  }
}

boolean intersectsPipes() {
  if (birdsY < upperPipeHeight && birdsX+25> pipeX && birdsX < (pipeX+60)) {
    return true;
  } else if (birdsY+25>lowerY && birdsX+25 > pipeX && birdsX < (pipeX+60)) {
    return true;
  } else {
    return false;
  }
}
