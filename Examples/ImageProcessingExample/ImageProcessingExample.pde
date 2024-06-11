/**
 * Image Processing Example
 *
 * This example has been motivated and inspired by the visual works from Seo Hyo-jung (@Seohyo)
 *
 */

import processing.video.*;

Capture video;

int tileSize;
int wVideo = 40;
int hVideo = 30;

void setup() {
  //size(640, 480);
  //size(1000, 750);
  fullScreen();
  init();
  tileSize = width/wVideo;
  rectMode(CENTER);
}


void init() {

  // This the default video input, see the GettingStartedCapture
  // example if it creates an error
  video = new Capture(this, wVideo, hVideo);
  //video = new Capture(this, 640, 480);

  // Start capturing the images from the camera
  video.start();
}


void captureEvent(Capture c) {
  c.read();
}


void draw() {

  

  background(0);
  video.loadPixels();

  /*
  draw0(100,100,50);
   draw1(200,100,50);
   draw2(300,100,50);
   draw3(400,100,50);
   draw4(500,100,50);
   */

  for (int y = 0; y < video.height; y++) {
    for (int x = 0; x < video.width; x++) {

      int index = y * video.width + x;
      color c = video.pixels[index];
      //int r = (int)red(c);
      //int g = (int)green(c);
      //int b = (int)blue(c);

      int br = (int) brightness(c);

      // int tileSize = 50;
      int xTile = width - x * tileSize;
      int yTile = y * tileSize;
      
      //float diam = map(br,0,256,1,100);
      //ellipse(xTile,yTile,diam,diam);

      if (br < 20) {
        draw0(xTile, yTile, tileSize);
      } else if (br < 50) {
        draw1(xTile, yTile, tileSize);
      } else if (br < 80) {
        draw2(xTile, yTile, tileSize);
      } else if (br < 120) {
        draw3(xTile, yTile, tileSize);
      } else if (br < 160) {
        draw4(xTile, yTile, tileSize);
      }
    }
  }
  
    
}


void draw0(float x, float y, float s) {
  pushStyle();
  fill(200, 20, 20);
  noStroke();
  strokeWeight(5);
  stroke(255);
  ellipse(x, y, s-10, s-10);
  popStyle();
}

void draw1(float x, float y, float s) {
  pushStyle();
  fill(200, 20, 20);
  noStroke();
  rect(x, y, s, s);
  fill(#D3FFFE);
  strokeWeight(10);
  stroke(0);
  ellipse(x, y, s-20, s-20);
  popStyle();
}

void draw2(float x, float y, float s) {
  pushStyle();
  fill(#4C02B7);
  noStroke();
  strokeWeight(10);
  stroke(0);
  ellipse(x, y, s-10, s-10);
  popStyle();
}

void draw3(float x, float y, float s) {
  pushStyle();
  fill(#4C02B7);
  strokeWeight(5);
  stroke(200, 20, 20);
  ellipse(x, y, s-10, s-10);
  popStyle();
}

void draw4(float x, float y, float s) {
  pushStyle();
  fill(#D3FFFE);
  noStroke();
  strokeWeight(5);
  //stroke(#4C02B7);
  stroke(#E30085);
  ellipse(x, y, s-15, s-15);
  popStyle();
}
