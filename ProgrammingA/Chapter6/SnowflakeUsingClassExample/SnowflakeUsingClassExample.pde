

Snowflake snowflake1;
Snowflake snowflake2;

ArrayList<Snowflake> snowflakes = new ArrayList<Snowflake>();

void setup(){
  size(800,800);
  //snowflake1 = new Snowflake(random(0,width),random(0,height));
  //snowflake2 = new Snowflake(random(0,width),random(0,height));
  
  snowflake1 = new Snowflake(200,100);
  snowflake2 = new Snowflake(400,100);
  
  for(int i=0; i<1000; i++){
    Snowflake snowflake = new Snowflake(random(0,width),random(0,height));
    snowflakes.add(snowflake);
  }
  //snowflakes.add(snowflake1);
  //snowflakes.add(snowflake2);
  
}

void draw(){
  background(0);
  noStroke();
  
  
  for(int i=0; i<snowflakes.size(); i++){
    snowflakes.get(i).move();
    snowflakes.get(i).display();
  }
  
  //snowflake1.move();
  //snowflake2.move();
  
  snowflake1.display();
  snowflake2.display();

}



class Snowflake{

  float x;
  float y;
  float diam;
  float dy;

  Snowflake(float xTemp, float yTemp){
    x = xTemp;
    y = yTemp;
    diam = random(5,20);
    dy = random(0,2.0);
    println("constructor snowflake",x,y,diam,dy);
  }
  
  void move(){
    y += dy;
    if(y - diam/2 > height){
      y = -diam/2;
    }
  }
  
  void display(){
    fill(255);
    ellipse(x,y,diam,diam);
  }


}
