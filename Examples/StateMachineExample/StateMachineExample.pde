/*
 *  Kunstuni TIME team
 *  Cécile - 12.2023
 *
 *  State machine example
 *
 *  A (finite) state machine is a mathematical abstraction used to design algorithms.
 *  It basically consist of a finite number of states.
 *
 *  In this example, we have the following states:
 *  State 0: display the text START
 *  State 1: draw a red square
 *  State 2: draw a green circle
 *  State 3: draw a blue triangle
 *
 *  Transitions from one step to another:
 *  State 0 -> State 1 (use the key s)
 *  State 1 -> State 2 (press the mouse)
 *  State 2 -> State 3 (press the mouse)
 *  State 3 -> State 1 (press the mouse)
 *
 */


// variable storing the current state
int state = 0;

void setup() {
  size(400, 400);
  textSize(50);
  noStroke();
}


void draw() {

  background(255);

  if (state == 0) {        // State 0: draw text
    fill(0);
    text("START", width/2 - 65, height/2);
  } else if (state == 1) {  // State 1: draw red square
    fill(200, 0, 0);
    rectMode(CENTER);
    rect(width/2, height/2, 150, 150);
  } else if (state == 2) {  // State 2: draw green circle
    fill(0, 150, 0);
    ellipse(width/2, height/2, 150, 150);
  } else if (state == 3) {  // State 3: draw blue triangle
    fill(0, 0, 200);
    float cx = width/2;
    float cy = height/2;
    float dist = 75;
    triangle(cx - dist, cy + dist, cx + dist, cy + dist, cx, cy - dist);
  }
  
}


// this method is called when the mouse is pressed
void mousePressed() {

  if (state == 1) {
    state = 2;
  } else if (state == 2) {
    state = 3;
  } else if (state == 3) {
    state = 1;
  }
  
}


// this method gets called when a key is pressed on the keyboard
void keyPressed() {

  if (key == 's' && state == 0) {
    state = 1;
  }
}
