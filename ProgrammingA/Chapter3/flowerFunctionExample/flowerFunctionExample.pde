

void setup(){

  size(800,800);

}

void draw(){

  background(#460250);
  
  stroke(0);
  strokeWeight(10);

  drawFlower(250,250);
  drawFlower(600,300);
  drawFlower(320,570);
  
  //drawFlower(mouseX,mouseY);
  
}

void drawFlower(int xCenter, int yCenter){
  
  stroke(0);
  strokeWeight(10);
  fill(#FFEC17);
  
  int offset = 75;
  int sizePatels = 150;
  ellipse(xCenter-offset,yCenter-offset,sizePatels,sizePatels);
  ellipse(xCenter+offset,yCenter-offset,sizePatels,sizePatels);
  ellipse(xCenter+offset,yCenter+offset,sizePatels,sizePatels);
  ellipse(xCenter-offset,yCenter+offset,sizePatels,sizePatels);
  
  fill(#ED8700);
  ellipse(xCenter,yCenter,sizePatels,sizePatels);
  
}
