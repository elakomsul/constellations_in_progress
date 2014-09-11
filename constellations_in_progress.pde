// constellations

// at the top of the sketch
float x1, y1, x2, y2; // GLOBAL variables

// Declare and initialize two integer variables at the top of the code.
int circleX = 0;
int circleY = 100;

// this runs when i hit play
void setup()
{
  size(600, 600); // sets up the size of the canvas
  
  background(0, 0, 0);
  
  x1 = width/2;
  y1 = height/2;
  
}

// this runs every frame
void draw()
{
  
  // this is how far away the thingie is from the mouse
  float dx = (mouseX-x1)/1.;
  float dy = (mouseY-y1)/1.;
  
  float drunkx = 0.;
  drunkx += random(-1, 1);
  drunkx += random(-1, 1);
  drunkx += random(-1, 1);
  drunkx = drunkx / 3.;
  float drunky = 0.;
  drunky += random(-1, 1);
  drunky += random(-1, 1);
  drunky += random(-1, 1);
  drunky = drunky / 1.;
  
  //println(dx + " " + dy);
  
  // this adds the distance and some drunkness to the position
  x2 = x1+random(min(100, dx), max(0, dx))+drunkx;
  y2 = y1+random(min(100, dy), max(0, dy))+drunky;
  
  // draw the line
  noFill(); // don't draw a fill
  stroke(255, 255, 255, 255); // set the stroke to the nice purple
  line(x1, y1, x2, y2); // x1, y1, x2, y2
  
  // draw the circle
  float x = 200;
  float y = 200;
  
  fill(255, 255, 255, 255); // set the fill to white
  float randX = random(-3,3);
  float randY = random(-3,3);
  float randsize = random(-3,3);
 
  
  // only draw circle when mouse is pressed
      if(mousePressed) ellipse(mouseX, mouseY, 5, 5);
  
  // stash our new x and y for the next round
  x1 = x2;
  y1 = y2;
  
  
}

// this runs when i pick up a key on the keyboard
void keyReleased()
{
  if(key==' ') background(0, 0, 0);
  
}

