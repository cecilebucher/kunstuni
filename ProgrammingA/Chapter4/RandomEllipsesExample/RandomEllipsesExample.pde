/*
*  Kunstuni TIME team
*  Cécile - 11.2023
*
*  Chapter 4 - random ellipses
*  
*/

boolean useWhite = true;

void setup(){
  size(400,400);
  background(0);
}

void draw(){
  
  noFill();
  
  if(useWhite) stroke(255,255,255,random(50));
  else stroke(0,0,0,random(50));
  
  // we just use here a for loop to be faster...
  for(int counter=0; counter<100; counter++){
    float diameter = random(20,100);
    ellipse(random(0,width),random(0,height),diameter,diameter);
  }

}


void keyPressed(){
  
  useWhite = !useWhite; // this reverses the value of the variable useWhite (true becomes false and false becomes true)

}
