
/*
*  Kunstuni TIME team
*  Cécile - 2024
*
*  timer Examples
*
*/

float timeStamp = 0;
float duration = 5000;

int state = 1;


void setup() {
  size(500, 500);
  timeStamp = millis();
  textSize(50);
}

void draw() {
  background(0);

  // grab the current time
  float currentTime = millis();

  if ((currentTime-timeStamp)>duration) {
    state++;
    timeStamp = millis();

    if (state > 3) {
      state = 1;
    }
  }

  text(state, 100, 100);
}
