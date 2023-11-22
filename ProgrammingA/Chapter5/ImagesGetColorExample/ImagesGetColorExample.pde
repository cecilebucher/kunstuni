/*
*  Kunstuni TIME team
*  Cécile - 11.2023
*
*  Chapter 5 - Example using the PImage get() function from Processing
*  https://processing.org/reference/PImage_get_.html
*  
*/

// declaring the image
PImage img;

void setup(){
  
  size(640,360);
  img = loadImage("sea.jpg");  // the image is in the data folder of your sketch folder
  background(0);

}

void draw(){
  
  // select a new random (x,y) position
  float x = random(0,width);
  float y = random(0,height);
  
  // map the mouseX position to the ellipse diameter
  // when the mouseX is near to 0 -> the diameter will be 10
  // when the mouseX is near to the width of our window -> the diameter will be 40
  float diameter = map(mouseX,0,width,10,40);
  
  // get the pixel color from the sea.jpg image at position (x,y)
  color c = img.get((int)x,(int)y);
  
  // use it for the fill color of the circle
  fill(c);
  ellipse(x,y,diameter,diameter);
  
}
