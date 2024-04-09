import themidibus.*; //Import the library

MidiBus myBus; // The MidiBus

boolean printMidiMessages = false;

void printMidiDevices() {
  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.
}


void setupMidi(String inputMidiName) {

  myBus = new MidiBus(this, inputMidiName, -1);
  
}


void setupMidi(String inputMidiName, String outputMidiName) {


  //MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.

  // Either you can
  //                   Parent In Out
  //                     |    |  |
  //myBus = new MidiBus(this, 0, 1); // Create a new MidiBus using the device index to select the Midi input and output devices respectively.

  // or you can ...
  //                   Parent         In                   Out
  //                     |            |                     |
  //myBus = new MidiBus(this, "IncomingDeviceName", "OutgoingDeviceName"); // Create a new MidiBus using the device names to select the Midi input and output devices respectively.

  // or for testing you could ...
  //                 Parent  In        Out
  //                   |     |          |
  //myBus = new MidiBus(this, -1, "Bus 1"); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.

  myBus = new MidiBus(this, inputMidiName, outputMidiName);
}

void updateMidi() {
  int channel = 0;
  int pitch = 64;
  int velocity = 127;

  //myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
  //delay(200);
  //myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff

  int number = 0;
  int value = 90;

  //myBus.sendControllerChange(channel, number, value); // Send a controllerChange
  //delay(2000);
}

void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  if (printMidiMessages) {
    println();
    println("Note On:");
    println("--------");
    println("Channel:"+channel);
    println("Pitch:"+pitch);
    println("Velocity:"+velocity);
  }
}

void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff
  if (printMidiMessages) {
    println();
    println("Note Off:");
    println("--------");
    println("Channel:"+channel);
    println("Pitch:"+pitch);
    println("Velocity:"+velocity);
  }
}

void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  if (printMidiMessages) {
    println();
    println("Controller Change:");
    println("--------");
    println("Channel:"+channel);
    println("Number:"+number);
    println("Value:"+value);
  }
  if (number >= 0 && number <= 7) {  // sliders
    updateSlidersFromMidi(number, value);
  } else if (number >= 16 && number <= 23) { // knobs
    updateKnobsFromMidi(number-16, value);  // to map knob ids to 0-7... let's see what's the best
  } 
  
  // previous versions where some buttons called explicitly some methods... let's see what's the best
  /*else if(number == 41){ // buttons
    if(value == 127) midiPlayButtonPressed();
    else if(value == 0) midiPlayButtonReleased();
  } else if(number == 42){
    if(value == 127) midiStopButtonPressed();
    else if(value == 0) midiStopButtonReleased();
  } */
  
  else{  // all other buttons... next,prev, rec, R, M, S...
    if(value == 127) midiButtonPressed(number);
    else if(value == 0) midiButtonReleased(number);
  }
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}

void enableMidiMessages(){
  printMidiMessages = true;
}

void disableMidiMessages(){
  printMidiMessages = false;
}

void dispose(){
  println("stopping...");
  myBus.dispose();
  println("bye");
}
