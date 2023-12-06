

// Declaration of two variables of type Snowflake
Snowflake snowflake1;
Snowflake snowflake2;

// Declaration of an array list of Snowflake
ArrayList<Snowflake> snowflakes;


void setup(){

  size(800,800);
  //fullScreen();
  
  
  // Creation of the 2 snowflakes using the keyword new and the name of the class
  // In the parenthesis, we are passing two parameters that we defined in the constructor
  // the first parameter is for the x position, the second is for the y position
  // We can implement as many parameters as we want.
  // We just need to define them in the constructor.
  snowflake1 = new Snowflake(100,100);
  snowflake2 = new Snowflake(300,100);
  
  
  // creation of the array list
  snowflakes = new ArrayList<Snowflake>();
  
  
  // We did create the list, but we still need to create every single Snowflake in the list
  // Creation of 100 snowflakes using a for loop
  for(int i=0; i<100; i++){
    
    // Creation of a new snowflake with random x and random y positions
    // s is just a temporary variable.
    Snowflake s = new Snowflake((int)random(0,width),(int)random(0,height));
    
    // once created, we add Snowflake s to our list.
    snowflakes.add(s);
    
  }
  
}


void draw(){

  background(0);
  noStroke();

  // Here we call the method move() and display() for our object snowflake1
  // For this we use the dot notation
  snowflake1.move();
  snowflake1.display();
  
  // Here we call the method move() and display() for our object snowflake2
  snowflake2.move();
  snowflake2.display();
 
 // now we want to do the same, but for all the snowflakes of our list
 for(int i=0; i<snowflakes.size(); i++){
   // same thing as before
   // we also call move() and display
   // but instead of having snowflake1, we are taking the "i"th element of the list 
   // by using the get() method of the class ArrayList(defined in Processing)
   snowflakes.get(i).move();
   snowflakes.get(i).display();
 }

}



// Definition of our class Snowflake
class Snowflake{
  
  // Declaration of all attributes used in our snowflake
  float x;
  float y;
  float diameter;
  float speedY;  // the number of pixels "travelled" for each frame
  color c;
  
  // Constructor Snowflake
  // This method is going to be called automatically when creating the object - i.e. using the new keyword
  Snowflake(int tempX, int tempY){
    x = tempX; 
    y = tempY;
    diameter = random(10,30);
    speedY = 2;
    c = color(random(100,255),random(100,255),random(100,255));
    println(x,y,diameter);
  }
  
  // method move()
  void move(){
    y += speedY;  // adding our speed to the position y
    
    // testing if the snowflake is at the bottom of the window
    if(y > height + diameter/2){
      // if this is the case - reassign the y position so that the snowflake reappears at the top of the window
      y = -diameter/2;
    }
  }
  
  // method display()
  void display(){
    fill(c);  
    ellipse(x,y,diameter,diameter);
  }
  
  
}
