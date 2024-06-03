/*
*  Kunstuni TIME team
*  Cécile - 2024
*
*  Image threshold example
*  Move the mouse from left to right to change the threshold value
*
*/

PImage img;

int nbRows;
int nbCols;

void setup() {

  size(640, 360); 
  img = loadImage("sea.jpg");

  nbRows = img.height;
  nbCols = img.width;
}

void draw() {

  loadPixels();
  img.loadPixels();
  for (int i=0; i<nbRows; i++) {
    for (int j=0; j<nbCols; j++) {
      int k = i*nbCols + j;

      color c = img.pixels[k];
      // float r = red(c);
      // float g = green(c);
      // float b = blue(c);
      
      float br = brightness(c);
      if (br > mouseX) {
        pixels[k] = color(255);
      } else {
        pixels[k] = color(0);
      }
    }
  }
  updatePixels();
}
