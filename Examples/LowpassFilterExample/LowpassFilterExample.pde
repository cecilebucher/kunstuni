/*
*  Kunstuniversity TIME team
*  Cécile - 15.09.23
*
*  Low-pass filter example:
*  Filters the x and y mouse position and removes the jittering.
*  The unfiltered mouse position is drawn in red
*  The filtered mouse position is drawn in green
*
*  Move the mouse around to see how the filter works
*  Press the mouse to reset the background to white
*
*/


// filter value: 0 (no filter) - 0.999 (very high filter)
float alpha = 0.9; // 0.9 is just for demo purposes - the alpha filter value is usually around 0.2

float filterX = 0;
float filterY = 0;


void setup() {

  size(600, 400);
  background(255);
  noStroke();
  
}

void draw() {

  // draw the unfiltered version in red
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 5, 5);

  // filter the x and y position of the mouse
  filterX = alpha * filterX + (1.0-alpha) * mouseX;
  filterY = alpha * filterY + (1.0-alpha) * mouseY;

  // draw the filtered version in green
  fill(0, 255, 0);
  ellipse(filterX, filterY, 5, 5);

}

void mousePressed(){
  background(255);
}
