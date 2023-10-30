

void setup(){

  size(400,400);

}

void draw(){

  background(#460250);
  
  fill(#FFEC17);
  
  stroke(0);
  strokeWeight(10);
  
  int offset = 75;
  int sizePatels = 150;
  ellipse(width/2-offset,height/2-offset,sizePatels,sizePatels);
  ellipse(width/2+offset,height/2-offset,sizePatels,sizePatels);
  ellipse(width/2+offset,height/2+offset,sizePatels,sizePatels);
  ellipse(width/2-offset,height/2+offset,sizePatels,sizePatels);
  
  int sizeCenter = 150;
  fill(#ED8700);
  ellipse(width/2,height/2,sizeCenter,sizeCenter);

}
