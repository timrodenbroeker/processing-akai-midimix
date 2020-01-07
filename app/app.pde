State s;
Gui gui;
void setup() {
  s = new State();
  gui = new Gui();
  size(700, 500);
  setupMidi();
  gui.setupUI();
}


void draw() {





  background(0);



  gui.drawUI();
}
