class Gui {
  PGraphics ui;
  PFont font;

  Gui() {
    font = createFont("a.ttf", 100);
  }

  void setupUI() {
    ui = createGraphics(500, 400);
  }

  void drawUI() {



    color strokeColor = 255;
    float strokeW = 1;
    float ellipseOffsetY = 40;
    float scalar = 0.8;
    float tilesX = 8;
    float tilesY = 5;
    float tileW = ui.width/tilesX;
    float tileH = ui.height/tilesY;
    float textPaddingBottom = 37;

    ui.beginDraw();
    ui.clear();

    ui.textFont(font);
    ui.textAlign(CENTER, CENTER);
    ui.textSize(11);
    ui.strokeWeight(strokeW);
    ui.fill(strokeColor);
    ui.stroke(strokeColor);


    ///////////////////////////////////
    // Fader - Reihe 0
    ///////////////////////////////////

    for (int x = 0; x < tilesX; x++) {
      ui.push();
      ui.translate(tileW/2 + tileW*x, ellipseOffsetY);
      ui.noFill();
      ui.ellipse(0, 0, tileW*scalar, tileW*scalar);
      ui.fill(strokeColor);
      ui.arc(0, 0, tileW*scalar, tileW*scalar, 0, map(fader[x][0], 0, 1, radians(0), radians(360)));

      ui.noStroke();
      ui.text(x+"/0", 0, textPaddingBottom);
      ui.pop();
    }

    ///////////////////////////////////
    // Fader - Reihe 1
    ///////////////////////////////////

    for (int x = 0; x < tilesX; x++) {
      ui.push();
      ui.translate(tileW/2 + tileW*x, ellipseOffsetY + tileH*1);
      ui.noFill();
      ui.ellipse(0, 0, tileW*scalar, tileW*scalar);
      ui.fill(strokeColor);
      ui.arc(0, 0, tileW*scalar, tileW*scalar, 0, map(fader[x][1], 0, 1, radians(0), radians(360)));

      ui.noStroke();
      ui.text(x+"/1", 0, textPaddingBottom);
      ui.pop();
    }


    ///////////////////////////////////
    // Fader - Reihe 2
    ///////////////////////////////////

    for (int x = 0; x < tilesX; x++) {
      ui.push();
      ui.translate(tileW/2 + tileW*x, ellipseOffsetY + tileH*2);
      ui.noFill();
      ui.ellipse(0, 0, tileW*scalar, tileW*scalar);
      ui.fill(strokeColor);
      ui.arc(0, 0, tileW*scalar, tileW*scalar, 0, map(fader[x][2], 0, 1, radians(0), radians(360)));
      ui.noStroke();
      ui.text(x+"/2", 0, textPaddingBottom);
      ui.pop();
    }
    ///////////////////////////////////
    // Buttons
    ///////////////////////////////////

    for (int x = 0; x < tilesX; x++) {
      ui.push();

      ui.rectMode(CENTER);
      ui.translate(tileW/2 + tileW*x, 25+tileH*3);
      if (btns1[x]) {
        ui.stroke(strokeColor);

        ui.fill(strokeColor);
      } else {
        ui.stroke(strokeColor);
        ui.noFill();
      }



      ui.rect(0, tileH/4, tileW*scalar, tileH/2-10);

      ui.noStroke();
      ui.text(x, 0, 20);

      if (btns1[x]) {
        ui.fill(0);
        ui.text("ON", tileW/2, 20);
      }
      ui.pop();
    }


    ///////////////////////////////////
    // Fader - Reihe 3 (Slider)
    ///////////////////////////////////


    for (int x = 0; x < tilesX; x++) {
      ui.push();
      ui.translate(tileW*x + tileW/2 - tileW/4, tileH*4);
      ui.stroke(strokeColor);
      ui.noFill();
      ui.rect(0, 0, tileW/4, 0);
      ui.fill(strokeColor);
      ui.rect(0, tileH, tileW/4, map(fader[x][3], 0, 1, 0, -tileH ));
      ui.noStroke();
      ui.text(x+"/3", tileW/2, 20);
      ui.pop();
    }

    ui.endDraw();

    noFill();
    stroke(strokeColor);
    rectMode(CENTER);
    imageMode(CENTER);
    //rect(width/2, height/2, ui.width, ui.height);
    image(ui, width/2, height/2);
  }
}
