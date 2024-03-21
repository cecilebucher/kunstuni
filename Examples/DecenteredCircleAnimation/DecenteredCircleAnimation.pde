/*
*  Kunstuni TIME team
*  Cécile - 3.2024
*
*  Example of an animation of a Hula Hoop circle.
*  The Hula Hoop circle rotates around an axis(in the middle of the window) at a distance dist
*
* 
*/


float alpha = 0;       // rotation angle
float diam = 200;      // Hula Hoop diameter
float dist = 50;       // distance between center and hula hoop center



void setup(){
  size(400,400);
  strokeWeight(5);
}


void draw(){
  
  
  //background(0);
  fill(0,15);
  noStroke();
  rect(0,0,width,height);
  
  
  // increment the rotation angle (0.02 is the rotation speed)
  alpha += 0.02;
  
  
  // calculate the center position of the Hula Hoop circle
  float rx = cos(alpha)*dist + width/2.0;
  float ry = sin(alpha)*dist + height/2.0;


  // draw small circle at the center
  fill(255);
  noStroke();
  ellipse(width/2,height/2,15,15);

  
  // draw the Hula Hoop circle
  noFill();
  stroke(255);
  ellipse(rx,ry,diam,diam);
  
  
}
