
/*
 * Goal: Make a game where the user has to catch rain drops in a bucket!
 *
 * In the setup() method:
 * 1. If you are using an image for the bucket, load it and resize it here.
 *    A bucket image, bucket.png, has been provided if you want to use it.
 *    bucket = loadImage("images/bucket.png");
 *    bucket.resize(100, 100);  // you can choose values other than 100, 100
 *
 * In the draw() method:
 * 2. Set a background color
 *
 * 3. Draw a raindrop (ellipse) at the top of the screen
 *
 * 4. Make the rain fall down the screen.
 *    Hint: make a variable for the raindrop's Y position and change it after
 *    you draw the raindrop.
 *
 * 5. When the rain falls off the bottom of the canvas, start a new rain drop
 *    falling from the top.
 *    Each new drop should start at a random position (X position) at the top.
 *    Hint: This code will get a random number between 0 and the window width.
 *    int randomNumber = (int)random(width);
 *
 * 6. Draw a bucket (rectangle or image) at the bottom of the screen.
 *    The bucket's width needs to be stored in the bucketWidth variable.
 *
 * 7. Make the bucket move side-to-side with the mouse. Hint: use mouseX
 *
 * 8. When the rain drop has fallen to the bucket, call the checkCatch() method
 *    to see if the rain drop is in the bucket.
 *
 * 9. Show the current score on the screen using the code below.
 *    Change the color if it does not show up on your background.
 *    fill(0, 0, 0);
 *    textSize(16);
 *    text("Score: " + score, 20, 20);
 */
static final int WIDTH = 600;
static final int HEIGHT = 600;

int score = 0;
int bucketWidth = 50;
int bucketHeight;
PImage bucket;
int y=0;
int x=(int) random(width);
PImage back;
boolean InMenu= true;

// Sets the size of your canvas

@Override
  public void settings() {
  size(WIDTH, HEIGHT);
}

@Override
  public void setup() {

  back = loadImage( "stars3.jpeg");
  back.resize(600, 600);
}

void mousePressed() {

  if (InMenu) {
    if (mouseX>=250 && mouseY >=300 && mouseY <=340) {
      InMenu= false;
    }
  }
}
@Override
  public void draw() {

  if ( InMenu==true) {
    background (0, 0, 0);
    fill(255, 254, 250);
    rect(250, 300, 100, 40);
    fill(27, 8, 255);
    text("play", 282, 325);
    textSize(22);
    text("Rain Game", 260, 180);
    
  } else {










    if (score==20) {
      text("Game won", 247, 135, 210);
    } else if (score==-5) {
      text("Game Over", 247, 135, 210);
    } else {


      background(back);
      fill(225, 225, 225);
      stroke(225, 225, 225);
      ellipse(x, y, 8, 8);

      fill (250, 10, 247);

      if (y>HEIGHT)
      {



        if ( x>mouseX && x<mouseX+100) {
          score++;
        } else {
          score--;
        }

        y=0;
        x=(int) random(width);
      }
      y+=7;
      if (score>6) {
        fill(157, 30, 227);
        y+=7.005;
      }
      if (score>12) {
        fill(30, 74, 227);
        y+=7.006;
      }

      rect (mouseX, HEIGHT-50, 100, 50);

      fill(255, 255, 255);
      textSize(30);
      text("Score: " + score, 250, 100);
    }
  }
}
