

// color array with three elements
color[] colors = {color(255, 0, 0), color(255, 255, 0), color(255, 0, 255)};


void setup() {

  size(400, 400);
  frameRate(2);
  textSize(100);
  
}


void draw() {
  
  background(0);
  
  // size of the color array - we could also have directly written 3...
  int nbColors = colors.length;
  
  // take a random number between 0 and 2. (Roll the dice metaphor)
  int dice = (int) random(0, nbColors);

  // select the dice "chosen" color and use it for the fill command
  fill(colors[dice]);
  
  // display the dice number
  text(dice, 20, 100);

  // display the circle
  ellipse(width/2, height/2, 150, 150);
  
}
