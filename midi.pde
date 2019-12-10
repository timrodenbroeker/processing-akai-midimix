import themidibus.*;
MidiBus myBus; 

float[][] fader = new float[8][4];
boolean[] btns1 = new boolean[8];

void setupMidi() {
  MidiBus.list();
  myBus = new MidiBus(this, 0, 0);
}

void controllerChange(int channel, int number, int value) {

  println(number);
  // FADER (REIHE 1)

  if (number == 16) {
    fader[0][0] = map(value, 0, 127, 0, 1);
  } else if (number == 20) {
    fader[1][0] = map(value, 0, 127, 0, 1);
  } else if (number == 24) {
    fader[2][0] = map(value, 0, 127, 0, 1);
  } else if (number == 28) {
    fader[3][0] = map(value, 0, 127, 0, 1);
  } else if (number == 46) {
    fader[4][0] = map(value, 0, 127, 0, 1);
  } else if (number == 50) {
    fader[5][0] = map(value, 0, 127, 0, 1);
  } else if (number == 54) {
    fader[6][0] = map(value, 0, 127, 0, 1);
  } else if (number == 58) {
    fader[7][0] = map(value, 0, 127, 0, 1);
  } 


  // FADER (REIHE 2)


  if (number == 17) {
    fader[0][1] = map(value, 0, 127, 0, 1);
  } else if (number == 21) {
    fader[1][1] = map(value, 0, 127, 0, 1);
  } else if (number == 25) {
    fader[2][1] = map(value, 0, 127, 0, 1);
  } else if (number == 29) {
    fader[3][1] = map(value, 0, 127, 0, 1);
  } else if (number == 47) {
    fader[4][1] = map(value, 0, 127, 0, 1);
  } else if (number == 51) {
    fader[5][1] = map(value, 0, 127, 0, 1);
  } else if (number == 55) {
    fader[6][1] = map(value, 0, 127, 0, 1);
  } else if (number == 59) {
    fader[7][1] = map(value, 0, 127, 0, 1);
  } 

  // FADER (REIHE 3)


  if (number == 18) {
    fader[0][2] = map(value, 0, 127, 0, 1);
  } else if (number == 22) {
    fader[1][2] = map(value, 0, 127, 0, 1);
  } else if (number == 26) {
    fader[2][2] = map(value, 0, 127, 0, 1);
  } else if (number == 30) {
    fader[3][2] = map(value, 0, 127, 0, 1);
  } else if (number == 48) {
    fader[4][2] = map(value, 0, 127, 0, 1);
  } else if (number == 52) {
    fader[5][2] = map(value, 0, 127, 0, 1);
  } else if (number == 56) {
    fader[6][2] = map(value, 0, 127, 0, 1);
  } else if (number == 60) {
    fader[7][2] = map(value, 0, 127, 0, 1);
  } 

  // FADER (REIHE 4)

  if (number == 19) {
    fader[0][3] = map(value, 0, 127, 0, 1);
  } else if (number == 23) {
    fader[1][3] = map(value, 0, 127, 0, 1);
  } else if (number == 27) {
    fader[2][3] = map(value, 0, 127, 0, 1);
  } else if (number == 31) {
    fader[3][3] = map(value, 0, 127, 0, 1);
  } else if (number == 49) {
    fader[4][3] = map(value, 0, 127, 0, 1);
  } else if (number == 53) {
    fader[5][3] = map(value, 0, 127, 0, 1);
  } else if (number == 57) {
    fader[6][3] = map(value, 0, 127, 0, 1);
  } else if (number == 61) {
    fader[7][3] = map(value, 0, 127, 0, 1);
  } 
}
void noteOn(int channel, int pitch, int velocity) {
  
  if (pitch == 1) {
    btns1[0] = true;
  }
  if (pitch == 4) {
    btns1[1] = true;
  }
  if (pitch == 7) {
    btns1[2] = true;
  } 
  if (pitch == 10) {
    btns1[3] = true;
  } 
  if (pitch == 13) {
    btns1[4] = true;
  } 
  if (pitch == 16) {
    btns1[5] = true;
  } 
  if (pitch == 19) {
    btns1[6] = true;
  } 
  if (pitch == 22) {
    btns1[7] = true;
  } 
 

  println(pitch + " note On");
}

void noteOff(int channel, int pitch, int velocity) {
  
  if (pitch == 1) {
    btns1[0] = false;
  }
  if (pitch == 4) {
    btns1[1] = false;
  }
  if (pitch == 7) {
    btns1[2] = false;
  } 
  if (pitch == 10) {
    btns1[3] = false;
  } 
  if (pitch == 13) {
    btns1[4] = false;
  } 
  if (pitch == 16) {
    btns1[5] = false;
  } 
  if (pitch == 19) {
    btns1[6] = false;
  } 
  if (pitch == 22) {
    btns1[7] = false;
  } 


  println(pitch + " note Off");
}  
