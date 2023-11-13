/*
*  Kunstuni TIME team
*  Cécile - 10.2023
*
*  Chapter 3 - Exercise 1
*  
*/


void setup(){
  
  size(400,400);
  
}

void draw(){
  
  background(255);
  
  // Exercise 1a
  int y = 0;
  while(y <= height){
    line(0,y,width,y);
    y = y+20;
  }
  
  /*
  // Exercise 1b
  float w = width;
  while(w > 0){
    stroke(0);
    fill(w/2);
    ellipse(width/2,height/2,w,w);
    w = w-40;
  }*/
  
}
