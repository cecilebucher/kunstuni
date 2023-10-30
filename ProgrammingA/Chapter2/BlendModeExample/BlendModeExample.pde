/*
*  Kunstuni TIME team
*  Cécile - 10.2023
*
*  Blend mode example
*  
*/

// define and assign the variables diameter and offset
int offset = 130;
int diameter = 200;


void setup() {
  
  // create a window of size 400 pixels by 400 pixels
  size(400, 400);

  noStroke(); // no outline
}


void draw() {
  
  //background(#6902AF);
  //background(255);
  background(0);

  // change blendmode depending on which key has been pressed
  if(key == '1'){
    blendMode(BLEND);  
  }else if(key == '2'){
    blendMode(ADD); 
  }else if(key == '3'){
    blendMode(DIFFERENCE);
  }

  // default ellipses
  fill(100,0,0);
  ellipse(offset,height/2,diameter,diameter);
  fill(255,255,255);
  ellipse(width-offset,height/2,diameter,diameter);
  
  // interactive ellipse
  fill(255,255,255);
  ellipse(mouseX,mouseY,diameter,diameter);
  
}


void keyPressed(){
  if(key == 's'){
    // Saves each frame as screen-0001.tif, screen-0002.tif, etc.
    saveFrame();
  }
}
