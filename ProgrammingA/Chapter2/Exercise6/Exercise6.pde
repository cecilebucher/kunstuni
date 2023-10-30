/*
*  Kunstuni TIME team
*  Cécile - 10.2023
*
*  Chapter 2 - Exercise 6
*
*  There are a lot of ways to do this exercise. This is one of them.
*
*  
*/


void setup(){

   size(400,400);

}

void draw(){
  
  background(0);
  fill(255);
  if(mouseX < width/2){
    rect(0,0,width/2,height);
  }else{
    rect(width/2,0,width/2,height);
  }
  
}


// another solution
/*
void setup(){

   size(400,400);

}

void draw(){
  
  background(255);
  fill(0);
  if(mouseX < width/2){
    rect(width/2,0,width/2,height);
  }else{
    rect(0,0,width/2,height);
  }
  
}
*/


// another solution
/*
void setup(){

   size(400,400);

}

void draw(){
  
  background(0); 
  // The command background(0) will have no impact here.
  // But it is a good habit to always have a background filled 
  // with a specific color for further changes/extensions.
  
  if(mouseX < width/2){
    fill(255);
    rect(0,0,width/2,height);
    fill(0);
    rect(width/2,0,width/2,height);
  }else{
    fill(0);
    rect(0,0,width/2,height);
    fill(255);
    rect(width/2,0,width/2,height);
  }
  
}
*/


// another solution
/*
void setup(){

   size(400,400);

}

void draw(){
  
  if(mouseX < width/2){
    background(0);
    fill(255);
  }else{
    background(255);
    fill(0);
  }
  
  rect(0,0,width/2,height);
  
}
*/
