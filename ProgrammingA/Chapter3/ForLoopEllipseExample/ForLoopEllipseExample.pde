/*
*  Kunstuni TIME team
*  Cécile - 10.2023
*
*  Chapter 3 - for loop example
*  
*/


void setup(){

  // create a window of 400 pixels by 400 pixels
  size(400,400);      

}


void draw(){
  
  // draw a white background
  background(255);    
  
  // set the fill color to black
  fill(0);
 
  // number of circles
  int nbCircles = 10;
  
  // initial size circle
  int s = 350;
  int sStep = s/(nbCircles-1);  //the size step for each iteration
  
  // initial stroke color value (for red and blue channel)
  int c = 255;
  int cStep = c/(nbCircles-1);  //the color step for each iteration
  
  // for loop
  for(int i=0; i<nbCircles; i++){
    stroke(c,0,c);                        // setting the contour color
    strokeWeight(6);                      // setting the width of the contour to 6
    ellipse(width/2,height/2,s,s);        // draw ellipse
    c = c - cStep;                        // update color value
    s = s - sStep;                        // update size value
  }

}
