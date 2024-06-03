/*
*  Kunstuni TIME team
 *  Cécile - 2024
 *
 *  Camera threshold example
 *  Move the mouse from left to right to change the threshold value
 *
 */

import processing.video.*;

Capture cam;

int nbRows;
int nbCols;


void setup() {

  size(640, 360); 

  String[] cameras = Capture.list();
  cam = new Capture(this, cameras[0]);
  cam.start();

  nbRows = height;
  nbCols = width;
}

void draw() {


  if (cam.available() == true) {
    cam.read();
  }

  loadPixels();
  cam.loadPixels();
  for (int i=0; i<nbRows; i++) {
    for (int j=0; j<nbCols; j++) {
      int k = i*nbCols + j;
      float br = brightness(cam.pixels[k]);
      if (br > mouseX) {
        pixels[k] = color(255, 0, 255);
      } else {
        pixels[k] = color(150, 0, 0);
      }
    }
  }

  // image(cam, 0, 0);
  updatePixels();
  
}
