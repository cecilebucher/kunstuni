/*
*  Kunstuni TIME team
*  Cécile - 10.2023
*
*  Chapter 2 example
*  
*/


// define and assign the variables diameter and offset
int diameter = 200;
int offset = 50;

// position of the first ellipse
int x = 0;


void setup() {
  size(400, 400);  // size of my window
}


void draw() {
  
  // change the color of the background depending on where the mouse is
  if(mouseX < width/3){
    background(0);        // black
  }else if(mouseX >= width/3 && mouseX < 2*width/3){
    background(255,0,0);  // red
  }else{
    background(255);      // white
  }
  
  // Using blending mode DIFFERENCE
  if(key == '1'){
    blendMode(BLEND);
  }else if(key == '2'){
    blendMode(DIFFERENCE);
  }
  noStroke();  // remove contours
 
  // draw the first ellipse in red
  fill(255, 0, 0);
  ellipse(x, height/2, diameter, diameter);
  
  // draw the second ellipse in white
  float d = map(mouseX,0,width,50,300);  // map the diameter of this ellipse to the mouse position
  fill(255, 255, 255);
  ellipse(width/2+offset, height/2, d, d);
  
  // increment the x position of the first ellipse
  x += 1;
  
  // if the red ellipse has reached the width of the display, 
  // reassign the x variable so that the ellipse appears on the left again.
  if(x > width+diameter/2){
    x = -diameter/2;
  }
  
  // draw the third ellipse where the mouse is
  ellipse(mouseX,mouseY,diameter,diameter);
  
  // prints out the framerate (number of frames per second)
  //println(frameRate);
  
}
