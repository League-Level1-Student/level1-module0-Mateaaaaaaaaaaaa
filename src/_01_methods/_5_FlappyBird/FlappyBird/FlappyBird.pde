  static final int WIDTH = 800;
    static final int HEIGHT = 600;
int birdsX=150;
int birdsY=300;
int birdYVelocity = -10;
int gravity = 1;
int pipeX=800;
int upperPipeHeight = (int) random(100, 400);
 
    @Override
    public void settings() {
        size(WIDTH, HEIGHT);
    }

    @Override
    public void setup() {
        
    }

    @Override
    public void draw() {
        
background(3, 3, 3);
fill(255, 3, 3);
stroke(255, 3, 3);
ellipse(birdsX, birdsY, 50, 50);

birdsY+=birdYVelocity;

birdYVelocity+=gravity;

pipeX-=5;

fill(3, 255, 3);
rect(pipeX, 0, 60, upperPipeHeight);
teleportPipes();
    }
    
   public void mousePressed(){
      birdYVelocity = -10;
    }
    
    public void teleportPipes(){
      if (pipeX==-60){
       pipeX= 800;
       upperPipeHeight = (int) random(100, 400);
 
       }
       
    }
