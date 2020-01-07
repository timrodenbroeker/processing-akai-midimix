PFont SpaceMono;

void setup() {
  SpaceMono = createFont("SpaceMono-Bold.ttf", 100);
  size(700, 500);
  setupMidi();
}
float ellipseOffsetY = 50;
float scalar = 0.87;

void draw() {

  textFont(SpaceMono);
  textAlign(CENTER, CENTER);
  textSize(14);


  float tilesX = 8;
  float tilesY = 5;
  float tileW = width/tilesX;
  float tileH = height/tilesY;
  float textPaddingBottom = 15;

  background(0);

  strokeWeight(2);
  fill(255);
  stroke(255);

  ///////////////////////////////////
  // Fader - Reihe 0
  ///////////////////////////////////

  for (int x = 0; x < tilesX; x++) {
    push();
    translate(tileW/2 + tileW*x, ellipseOffsetY);
    noFill();
    ellipse(0, 0, tileW*scalar, tileW*scalar);
    fill(255);
    arc(0, 0, tileW*scalar, tileW*scalar, 0, map(fader[x][0], 0, 1, radians(0), radians(360)));

    noStroke();
    text(x, 0, textPaddingBottom);

    pop();
  }

  ///////////////////////////////////
  // Fader - Reihe 1
  ///////////////////////////////////

  for (int x = 0; x < tilesX; x++) {
    push();
    translate(tileW/2 + tileW*x, ellipseOffsetY + tileH*1);
    noFill();
    ellipse(0, 0, tileW*scalar, tileW*scalar);
    fill(255);
    arc(0, 0, tileW*scalar, tileW*scalar, 0, map(fader[x][1], 0, 1, radians(0), radians(360)));

    noStroke();
    text(x, 0, textPaddingBottom);
    pop();
  }


  ///////////////////////////////////
  // Fader - Reihe 2
  ///////////////////////////////////

  for (int x = 0; x < tilesX; x++) {
    push();
    translate(tileW/2 + tileW*x, ellipseOffsetY + tileH*2);
    noFill();
    ellipse(0, 0, tileW*scalar, tileW*scalar);
    fill(255);
    arc(0, 0, tileW*scalar, tileW*scalar, 0, map(fader[x][2], 0, 1, radians(0), radians(360)));
    noStroke();
    text(x, 0, textPaddingBottom);
    pop();
  }
  ///////////////////////////////////
  // Buttons
  ///////////////////////////////////

  for (int x = 0; x < tilesX; x++) {
    push();
    translate(tileW*x, tileH*3);
    if (btns1[x]) {
      stroke(255);
      fill(255);
    } else {
      stroke(255);
      noFill();
    }

    rect(0, 0, tileW, tileH);

    noStroke();
    text(x, tileW/2, 20);
    pop();
  }


  ///////////////////////////////////
  // Fader - Reihe 3 (Slider)
  ///////////////////////////////////


  for (int x = 0; x < tilesX; x++) {
    push();
    translate(tileW*x, tileH*4);
    stroke(255);
    noFill();
    rect(0, 0, tileW, tileH);
    fill(255);
    rect(0, tileH, tileW, map(fader[x][3], 0, 1, 0, -tileH));
    noStroke();
    text(x, tileW/2, 20);
    pop();
  }
}
