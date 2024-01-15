/*
 *  Kunstuni TIME team
 *  Cécile - 1.2024
 *
 *  Colormap example
 *
 *  Colormaps allow you to detect if the mouse is inside complex shapes
 
 *  Colormap image:
 *  The big star has a red value of 255
 *  The small star has a red value of 100
 *  The background has a red value of 0 since it is black
 *
 */

PImage colormap;

PImage purpleBigStar;
PImage yellowBigStar;

PImage purpleSmallStar;
PImage yellowSmallStar;

void setup() {

  // The size of the window is the same size as the loaded images
  size(600,600);
  
  // load COLORMAP image
  colormap = loadImage("colormap.png");
  
  // load the big star images
  purpleBigStar = loadImage("purpleBigStar.png");
  yellowBigStar = loadImage("yellowBigStar.png");
  
  // load the small star images
  purpleSmallStar = loadImage("purpleSmallStar.png");
  yellowSmallStar = loadImage("yellowSmallStar.png");
  
}


void draw() {
  
  background(0);
  
  // get the pixel value of the colormap image at position (mouseX,mouseY)
  color c = colormap.get(mouseX,mouseY);
  
  // for debug
  //println(red(c));
  
  // compare the red values
  // check if the mouse is inside the big star
  if(red(c) > 230){
    image(purpleBigStar,0,0);    // show the purple big star image
  }else{
    image(yellowBigStar,0,0);    // show the yellow big star image
  }
  
  // check if the mouse is inside the small star
  if(red(c) > 80 && red(c) < 120){
    image(purpleSmallStar,0,0);  // show the purple small star image
  }else{
    image(yellowSmallStar,0,0);  // show the yellow small star image
  }
  
  // for debug
  //image(colormap,0,0);
  
}
