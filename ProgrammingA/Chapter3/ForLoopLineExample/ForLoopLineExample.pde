/*
*  Kunstuni TIME team
*  Cécile - 10.2023
*
*  Chapter 3 - for loop line example
*  
*/


void setup(){

  // create a window of 400 pixels by 400 pixels
  size(400,400);      

}


void draw(){
  
  // draw a white background
  background(255);    
  
  // set the stroke color to black
  stroke(0);
  strokeWeight(10);
 
  int step = 25;                  // The variable step defines the number of pixels between the lines
  int nbLines = width/step + 1;   // the number of lines I want to draw
  int x = 0;                      // the starting x position for the first line
  int y = 100;                    // the starting y position for all lines
  int lineHeight = 200;           // the height of the lines
  
  // for loop
  for(int i=0; i<nbLines; i++){
    line(x,y,x,y + lineHeight);   // draw the line
    x = x + step;                 // update the x position
  }

}
