/*
*  Kunstuni TIME team
*  Cécile - 11.2023
*
*  Chapter 5 - loadImage example
*  
*/


PImage img;

void setup(){

  size(400,400);
  img = loadImage("Bird.gif"); // The image filename is in the data folder of the sketch folder
  
}


void draw(){

  background(255);
  
  // draw the image at position 0,0
  image(img,0,0);
  
  // draw the image at position 0,0 with a width and height of 50 pixels
  image(img,0,0,50,50);

}
