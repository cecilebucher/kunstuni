/*
*  Kunstuni TIME team
*  Cécile - 11.2023
*
*  TODO: Install the library The MidiBus through the library manager 
*
*  This example has been tested with the Korg nano Controller
*
*  changes the background color with the three first sliders 
*  changes the size of the ellipse with the first knob
*
*/


float r;
float g;
float b;

float diameter;
float diameterMin;
float diameterMax;


void setup(){
  
  size(600,600);
  
  // print out all available midi input and output devices
  printMidiDevices();
  
  // mac
  setupMidi("SLIDER/KNOB"); // when using the Korg nano controller, we just need the midi input device
  
  // windows
  // setupMidi("nanoKONTROL2");
  
  // min and max circle diameters initialisation
  diameterMin = 80;
  diameterMax = 300;
  
  // circle diameter initatialisation
  diameter = diameterMin;

}


void draw(){
  background(r,g,b);
  ellipse(width/2,height/2,diameter,diameter);
}


/*
*  updateSlidersFromMidi: this method gets called everytime a slider value is changed
*  param sliderID: value in the range of 0 to 7 (included)
*  param value: value in the range of 0 to 127 (included)
*/
void updateSlidersFromMidi(int sliderID, int value){
  println("sliderID",sliderID,value);
  if(sliderID == 0 ){  // first slider on the left
    r = map(value,0,127,0,255);
  }else if(sliderID == 1){
    g = map(value,0,127,0,255);
  }else if(sliderID == 2){
    b = map(value,0,127,0,255);
  }
  
}


/*
*  updateKnobsFromMidi: this method gets called everytime a knob value is changed
*  param knobID: value in the range of 0 to 7 (included)
*  param value: value in the range of 0 to 127 (included)
*/
void updateKnobsFromMidi(int knobID, int value){
  println("knobID",knobID,value);
  if(knobID == 0){  // first knob on the left
    diameter = map(value,0,127,diameterMin,diameterMax);
  }
  
}


/*
*  midiButtonPressed: this method gets called when a midi button is pressed
*  param buttonID: values according to the Korg Nano Controller owner's manual
*  -> or just print out the buttonID value to know which id corresponds to which button on the controller
*
*/
void midiButtonPressed(int buttonID){

  println("midi button",buttonID,"has been pressed");
  if(buttonID == 41){
    println("Play button has been pressed");
  }else if(buttonID == 42){
    println("Stop button has been pressed");
  }

}


/*
*  midiButtonReleased: this method gets called when a midi button is released
*  param buttonID: values according to the Korg Nano Controller owner's manual
*  -> or just print out the buttonID value to know which id corresponds to which button on the controller
*
*/
void midiButtonReleased(int buttonID){
  
  println("midi button",buttonID,"has been released");
  if(buttonID == 41){
    println("Play button has been released");
  }else if(buttonID == 42){
    println("Stop button has been released");
  }
  
}
