/*
*  Kunstuni TIME team
*  Cécile - 2024
*
*  GUI slider example
*
*
*/



// background sliders;
Slider rBackgroundSlider;
Slider gBackgroundSlider;
Slider bBackgroundSlider;

// diameter slider
Slider diameterSlider;

// position, size and font of the GUI elements
ControlFont cf1;

int xSliderPos;
int ySliderPos;
int ySliderPosStep;

int slider_width;
int slider_height;

int paddingX;


void setupGUI(){

    slider_width = 200; 
    slider_height = 20; 
   
    // the starting position of the first created slider
    xSliderPos = 20;
    ySliderPos = 20;

    paddingX = 20;
    ySliderPosStep = slider_height + 10;

    int fontSize = 15;
    cf1 = new ControlFont(createFont("Arial",fontSize));

    // adding the red, green and blue sliders
    rBackgroundSlider = addSlider("rBackground",rBackground,0,255,cf1);
    gBackgroundSlider = addSlider("gBackground",gBackground,0,255,cf1);
    bBackgroundSlider = addSlider("bBackground",bBackground,0,255,cf1);
    
    // adding the diameter slider
    diameterSlider = addSlider("diameter",diameter,diameterMin,diameterMax,cf1);

}


/*
*  addSlider: this method adds a slider below the last created slider
*  param name: name of the slider - it must have the same name as the variable linked to the slider.
*  param value: the initial value of the slider
*  param min: the minimal value of the slider
*  param max: the maximal value of the slider
*  ControlFont cf: the font used for the labels
*
*  Example: addSlider("rBackground",100,0,255,cf1);
*/
Slider addSlider(String name,float value,float min,float max, ControlFont cf){

    Slider s = cp5.addSlider(name)
            .setPosition(xSliderPos, ySliderPos)
            .setSize(slider_width, slider_height)
            .setRange(min, max)
            .setColorCaptionLabel(color(255, 2, 141))
            .setValue(value)
            ;

    s.getValueLabel().setFont(cf).setPaddingX(paddingX);

    s.getCaptionLabel().setFont(cf)
            .toUpperCase(false)  
            .setPaddingX(paddingX);

    ySliderPos += ySliderPosStep;   
    return s; 
}



/*
*  updateSlidersFromMidi: this method gets called everytime a slider value is changed
*  param sliderID: value in the range of 0 to 7 (included)
*  param value: value in the range of 0 to 127 (included)
*/
void updateSlidersFromMidi(int sliderID, int value){
  println("sliderID",sliderID,value);
  if(sliderID == 0 ){  // first slider on the left
    float v = map(value,0,127,0,255);
    rBackgroundSlider.setValue(v);
  }else if(sliderID == 1){
    float v = map(value,0,127,0,255);
    gBackgroundSlider.setValue(v);
  }else if(sliderID == 2){
    float v = map(value,0,127,0,255);
    bBackgroundSlider.setValue(v);
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
    float v = map(value,0,127,0,255);
    diameterSlider.setValue(v);
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
