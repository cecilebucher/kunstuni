/*
*  Kunstuni TIME team
*  Cécile - 10.2023
*
*  Chapter 3 - Exercise 2
*  
*/


void setup(){
  
  size(400,400);
  
}

void draw(){
  
  background(255);
  
  // Exercise 2a
  for(int y=0; y <= height; y += 20){
    line(0,y,width,y);
  }
  
  /*
  // Exercise 2b
  float f = 255;
  for(int w=width;w>0; w-=40){
    stroke(0);
    fill(w/2);
    ellipse(width/2,height/2,w,w);
  }
  */
  
}
