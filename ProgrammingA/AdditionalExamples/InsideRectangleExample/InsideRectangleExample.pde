/*
 *  Kunstuni TIME team
 *  Cécile - 1.2024
 *
 *  InsideRectangle example
 *
 *  Checks whether the mouse is in a rectangle or not.
 *
 */

float xRect = 50;
float yRect = 100;
float wRect = 150;
float hRect = 30;


void setup() {

  size(400,400);

}

void draw() {
  
  background(0);
  
  // check if the mouse is inside the rectangular
  if(mouseX >= xRect && mouseX <= (xRect + wRect) && mouseY >= yRect && mouseY <= (yRect + hRect)){
    
    fill(0,255,0);  // fill with green
    
    // check if the mouse is pressed
    if(mousePressed){
      stroke(255);  // use a white ouliner
    }else{
      noStroke();   // desactive the white outliner
    }
    
  }else{
    fill(0,0,255);  // fill with blue
    noStroke();     // desactivate any outliner
  }

  rect(xRect,yRect,wRect,hRect);
  
}
