/*
*  Kunstuni TIME team
*  Cécile - 2024
*
*  GUI slider example
*
*
*/



// background values
float rBackground;
float gBackground;
float bBackground;

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
