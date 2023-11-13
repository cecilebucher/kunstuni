/*
*  Kunstuni TIME team
*  Cécile - 10.2023
*
*  Chapter 4 - Perlin noise
*  
*/


// Perlin noise
float xoff1 = 0.0;
float xoff2 = 100.0;

void setup(){
  size(400,400);
}

void draw(){
  background(0);
  xoff1 = xoff1 + .01;
  xoff2 = xoff2 + .01;
  float nx = noise(xoff1) * width;
  float ny = noise(xoff2) * width;
  ellipse(nx,ny,50,50);
}
