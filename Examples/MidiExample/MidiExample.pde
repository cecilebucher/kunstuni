/*
*  Kunstuni TIME team
*  Cécile - 11.2023
*
*  TODO: Install the library The MidiBus through the library manager 
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
  
  size(400,400);
  
  printMidiDevices();
  setupMidi("SLIDER/KNOB", "SLIDER/KNOB");
  
  diameterMin = 80;
  diameterMax = 200;
  
  diameter = diameterMin;

}


void draw(){
  background(r,g,b);
  ellipse(width/2,height/2,diameter,diameter);
}


/*
*  updateSlidersFromMidi: this method gets called everytime a slider value is changed
*  param sliderID: value in the range of 0 to 7 (included)
*  param value: value in the range of 0 to 128 (included)
*/
void updateSlidersFromMidi(int sliderID, int value){
  
  if(sliderID == 0 ){  // first slider on the left
    r = map(value,0,128,0,255);
  }else if(sliderID == 1){
    g = map(value,0,128,0,255);
  }else if(sliderID == 2){
    b = map(value,0,128,0,255);
  }
  
}


/*
*  updateKnobsFromMidi: this method gets called everytime a knob value is changed
*  param knobID: value in the range of 16 to 23 (included)
*  param value: value in the range of 0 to 127 (included)
*/
void updateKnobsFromMidi(int knobID, int value){
  
  if(knobID == 16){  // first knob on the left
    diameter = map(value,0,128,diameterMin,diameterMax);
  }
  
}
