/*
*  Kunstuni TIME team
 *  Cécile - 2024
 *
 *  Image Processing get function example
 *  This is an example of how to use the get() function from processing: https://processing.org/reference/PImage_get_.html
 *
 *  -> Change the value of the boolean "useCamera" to true/false in order to use either the camera or the sea image
 *
 */
 
import processing.video.*;

Capture cam;
PImage img;

int nbRows;
int nbCols;

boolean useCamera = false;

void setup() {

  size(640, 480); 

  if (useCamera) {
    String[] cameras = Capture.list();
    cam = new Capture(this, cameras[0]);
    nbRows = cam.height;
    nbCols = cam.width;
    cam.start();
  } else {
    img = loadImage("sea.jpg");
      nbRows = img.height;
      nbCols = img.width;
  }
  
  background(0);

}


void draw() {

  if (useCamera) {    

    if (cam.available() == true) {
      cam.read();
    }

    for(int i=0; i<100; i++){   // generate 100 at a time to be faster
      float x = random(width);
      float y = random(height);
      color c = cam.get(int(x), int(y));    // get the color
      fill(c);
      ellipse(x, y, 15, 15);      // draw the circle
    }

  } else {

    for(int i=0; i<100; i++){    // generate 100 at a time to be faster
      float x = random(width);   
      float y = random(height);
      color c = img.get(int(x), int(y));    // get the color
      fill(c);
      ellipse(x, y, 15, 15);    // draw the circle
    }

  }
}
