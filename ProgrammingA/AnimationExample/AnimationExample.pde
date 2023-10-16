/*
 *  Kunstuni TIME team
 *  Cécile - 10.2023
 *
 *  Animation example
 *
 */


// define and assign the variables diameter and offset
int diameter = 200;
int offset = 50;

// position of the first ellipse
int x = 0;


void setup() {
  size(400, 400);  // size of my window
  noStroke();
}


void draw() {

  background(0);  // fill my background with black
  
  // draw the first ellipse in red
  fill(255, 0, 0);
  ellipse(x, height/2, diameter, diameter);

  // draw the second ellipse in white
  fill(255, 255, 255);
  ellipse(width/2+offset, height/2, diameter, diameter);

  // increment the x position of the red ellipse
  x += 1;

  // if the red ellipse has reached the width of the display,
  // reassign the x variable so that the ellipse appears on the left again.
  if (x > width+diameter/2) {
    x = -diameter/2;
  }
  
}
