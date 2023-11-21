

void setup(){

  size(400,400);
  noLoop();
  
}

void draw(){
  
  int result = sum(3,11,2);
  println(result);
  
}

int sum(int a, int b, int c){
  int res = a + b + c;
  return res;
}
