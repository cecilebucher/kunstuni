/*
*  Kunstuni TIME team
*  Cécile - 11.2023
*
*  Chapter 5 - Snowflake example
*  
*/


// position x and y of all snowflakes
float[] x = new float[1000];
float[] y = new float[1000];
float[] diameters = new float[1000];

// steps (number of pixels that are "travelled" per frame), i.e. speed
float[] dy = new float[1000];

//float stepY = 1;
//int diameter = 10;

// image which are used as a snowflake
PImage img;

void setup(){

  size(800,800);
  //fullScreen();
  
  // random initialisation of all snowflakes
  for(int i=0; i<x.length; i++){
    x[i] = random(0, width);
    y[i] = random(0,height);
    dy[i] = random(0,2.0);
    diameters[i] = random(2,30);
  }
  
  // loading the image for the snowflakes. We just need to load it once.
  img = loadImage("particle.png");
  
  
}

void draw(){

  background(0);
  noStroke();
  
  // for all snowflakes, update their y position
  for(int i=0; i<x.length; i++){
    //y[i] = y[i] + stepY;
    y[i] = y[i] + dy[i];
    if(y[i]-diameters[i]/2>height){
      y[i] = -diameters[i]/2;
    }
  }
  
  // for allsnowflakes, display an ellipse or the image
  for(int i=0; i<x.length; i++){
    //ellipse(x[i], y[i] ,diameters[i],diameters[i]);
    image(img, x[i], y[i] ,diameters[i],diameters[i]);
  }
  
  // print out the framerate on the console
  //println(frameRate);
}
