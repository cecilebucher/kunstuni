/*
*  Kunstuni TIME team
*  Cécile - 10.2023
*
*  Chapter 3 - for loop grid example
*  
*/


void setup(){

  // create a window of 400 pixels by 400 pixels
  size(400,400);      
  surface.setTitle("ForLoopSquareExample");
}


void draw(){
  
  // draw a white background
  background(255);    
  
  fill(0);
  
  // Example of one column of square
  /*
  int x = 20;
  int y = 20;
  int s = 50;
 
  for(int i=0; i<6; i++){
    rect(x,y,s,s);
    y += 10 + s;
  }
  */
  
  // Example of a grid 
  int xStart = 20;
  int x = xStart;
  int y = 20;
  int s = 50;
  
  // for every row
  for(int i=0; i<6; i++){
    x = xStart;                // for every row, reassign the x position
    
    // for every column
    for(int j = 0; j<6; j++){
      rect(x,y,50,50);          // draw the square
      x += 10 + s;              // update the x position
    }                         
    
    y += 10 + s;                // update the y position
    
  }
  

}
