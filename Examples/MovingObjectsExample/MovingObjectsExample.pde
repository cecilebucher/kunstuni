/*
*  Kunstuniversity TIME team
*  Cécile - 15.06.23
*
*  Moving objects example
*
*/

MovingObject m1;

ArrayList<MovingObject> mObjects;
int nb = 100;

void setup(){
  size(600,400);
  //fullScreen();
  
  // creating one moving object
  m1 = new MovingObject();
  
  // creating nb moving objects.
  mObjects = new ArrayList<MovingObject>();
  for(int i=0; i< nb; i++){
    MovingObject m = new MovingObject();
    mObjects.add(m);
  }
  
  rectMode(CENTER);
}

void draw(){
  background(0);
  
  // moving and displaying single moving object
  m1.move();
  m1.display();
  
  // moving and displaying all moving objects
  for(int i=0; i<mObjects.size(); i++){
    mObjects.get(i).move();
    mObjects.get(i).display();
  }
  
  // in case your computer is slow, check the framerate...
  // you can decrease the variable nb if it runs too slow.
  // println(frameRate);

}


class MovingObject{

  float x;
  float y;
  float angle;
  
  float xOffset;
  float yOffset;
  float angleOffset;
  
  float w;
  float h;
  
  MovingObject(){

    x = random(width);
    y = random(height);
    
    // these are random initial values for the perlin noise. 
    xOffset = random(100);
    yOffset = random(100);
    angleOffset = random(100);
    
    // size of the rectangle
    w = 10;
    h = 10;
  }
  
  void move(){
    
    // change these three values if you want it to move/rotate slower/faster.
    xOffset += 0.0015;
    yOffset += 0.0015;
    angleOffset += 0.002;
    
    float borderW = width/4; 
    float borderH = height/4; 
    
    x = -borderW/2 + noise(xOffset)*(width+borderW) ;
    y = -borderH/2 + noise(yOffset)*(height+borderH);
    angle = noise(angleOffset)*2*PI;
  
  }
  
  void display(){
    fill(255);
    pushMatrix();   // save the default coordinate system
    translate(x,y); // translate the whole coordinate system to x,y
    rotate(angle);  // now you can rotate 
    rect(0,0,w,h);  // draw the rectangle/image at position 0,0 (because the coordinate system starts now at x,y)
    popMatrix();    // restore the default coordinate system
  }

}
