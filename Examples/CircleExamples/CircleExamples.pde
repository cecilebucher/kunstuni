/*
*  Kunstuni TIME team
*  Cécile - 2024
*
*  Circle examples. 
*  float rx = cos(alpha) * radius
*  float ry = sin(alpha) * radius
*
*/

import controlP5.*;

// GUI
ControlP5 cp5;

int nbLines = 30;

void setup() {
  size(900, 400);
  background(0);
  
  // setup GUI
  cp5 = new ControlP5(this);
  setupGUI();
  cp5.setAutoDraw(true);

  stroke(255);

}

void drawCircle1() {
  float dAlpha = 2.0*PI/nbLines;
  float alpha = 0;
  float r = 100;
  float xCenter = 150;
  float yCenter = 200;
  for (int i=0; i<nbLines; i++) {
    float rx1 = cos(alpha)*r;
    float ry1 = sin(alpha)*r;
    float rx2 = cos(alpha + PI)*r;
    float ry2 = sin(alpha + PI)*r;
    line(rx1 + xCenter, ry1 + yCenter, rx2 + xCenter, ry2 + yCenter);
    alpha += dAlpha;
  }
}

void drawCircle2() {
  float r = 100;
  float xCenter = 450;
  float yCenter = 200;
  for (int i=0; i<nbLines; i++) {
    float alpha1 = random(2.0*PI);
    float rx1 = cos(alpha1)*r;
    float ry1 = sin(alpha1)*r;
    float alpha2 = random(2.0*PI);
    float rx2 = cos(alpha2)*r;
    float ry2 = sin(alpha2)*r;
    line(rx1 + xCenter, ry1 + yCenter, rx2 + xCenter, ry2 + yCenter);
  }
}

void drawCircle3(){
  float r = 100;
  float xCenter = 750;
  float yCenter = 200;
  float alpha = 0;
  float dAlpha = 2.0*PI/nbLines;
  // nbLines are points...
  for (int i=0; i<nbLines; i++) {
    float rx1 = cos(alpha)*r;
    float ry1 = sin(alpha)*r;
    ellipse(rx1+xCenter,ry1+yCenter,5,5);
    alpha += dAlpha;
  }
}

void draw() {
  background(0);
  drawCircle1();
  drawCircle2();
  drawCircle3();
}
