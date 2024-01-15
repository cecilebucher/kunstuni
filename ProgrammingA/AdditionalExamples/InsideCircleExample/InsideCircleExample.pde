/*
 *  Kunstuni TIME team
 *  Cécile - 1.2024
 *
 *  InsideCircle example
 *
 *  Checks whether the mouse is in a circle or not.
 *
 */

float xCircle = 80;
float yCircle = 100;
float rCircle = 150;  // radius of the circle


void setup() {

  size(400,400);

}

void draw() {
  
  background(0);
  
  // check if the mouse is inside the circle
  if(dist(mouseX,mouseY,xCircle,yCircle) <= rCircle){ // dist calculates the distance between the mouse position and the center of the circle
    
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

  ellipse(xCircle,yCircle,rCircle,rCircle);
  
}
