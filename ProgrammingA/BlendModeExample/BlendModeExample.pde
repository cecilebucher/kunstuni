
int offset = 130;
int diameter = 200;

void setup() {
  // create a window of size 400 pixels by 400 pixels
  size(400, 400);

  // set colors
  fill(50,0,0);
  noStroke(); // no outline
}


void draw() {
  //background(#6902AF);
  background(255);
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
  ellipse(offset,height/2,diameter,diameter);
  ellipse(width-offset,height/2,diameter,diameter);
  
  // interactive ellipse
  ellipse(mouseX,mouseY,diameter,diameter);
  
}


void keyPressed(){
  if(key == 's'){
    // Saves each frame as screen-0001.tif, screen-0002.tif, etc.
    saveFrame();
  }
}

/*
// create a window of size 400 pixels by 400 pixels
 size(400,400);
 
 // set background to black
 background(0);
 
 // set the outline to gray(100) and the width of the outline to width/4
 stroke(100);
 strokeWeight(width/4);
 
 // Use blendmode
 blendMode(MULTIPLY);  // ADD, SUBTRACT, MULTIPLY, SCREEN
 
 // drawing of the lines
 int offset = 100;
 line(offset, offset, width-offset, height-offset);
 line(width-offset, offset, offset, height-offset);
*/
