/*
*  Kunstuni TIME team
*  Cécile - 2024
*
*  TODO: 
*  - Install the MidiBus library through the library manager
*  - Install the ControlP5 library through the library manager
*
*  This example has been tested with the Korg nano Controller
*
*  changes the background color with the three first nano Controller sliders 
*  changes the size of the ellipse with the first nano Controller knob
*
*  You can also change the background colors and the size of the ellipse with the GUI sliders
*
*  use the key 'd' to show/hide the sliders
*
*/

import controlP5.*;

// GUI
ControlP5 cp5;


// background values - red/green/blue
float rBackground;
float gBackground;
float bBackground;

// diameter values - current/min/max
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
  
  // setup Midi
  printMidiDevices();
  setupMidi("SLIDER/KNOB");     // mac
  // setupMidi("nanoKONTROL2"); // windows

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
