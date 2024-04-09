/*
*  Kunstuni TIME team
*  Cécile - 2024
*
*  TODO: 
*  - Install the ControlP5 library through the library manager
*
*  changes the background color and the diameter of the circle with the controlP5 sliders
*
*  use the key 'd' to show/hide the sliders
*
*/

import controlP5.*;

// GUI
ControlP5 cp5;


float diameter;
float diameterMin;
float diameterMax;

boolean drawGUI = true;


void setup(){
  
  size(600,600);

  // min and max circle diameters initialisation
  diameterMin = 80;
  diameterMax = 300;
  
  // circle diameter initialisation
  diameter = diameterMin;

  // setup GUI
  cp5 = new ControlP5(this);
  setupGUI();
  cp5.setAutoDraw(false);

  noStroke();

}


void draw(){
  background(rBackground,gBackground,bBackground);
  ellipse(width/2,height/2,diameter,diameter);
  
  // GUI
  if(drawGUI){
    cp5.draw();
  }
}


void keyPressed(){
  if(key == 'd'){
    drawGUI = !drawGUI;
  }
}
