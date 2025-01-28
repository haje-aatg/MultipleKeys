//https://processing.org/discourse/beta/num_1196108305.html
//Can detect 4 keys. Some times 5 or 6 on certain computers
int nrKeys = 0;
PFont font;
boolean[] downKeys = new boolean[256];
boolean[] downCodedKeys = new boolean[256];

void setup() {
  size(200, 200);
  fill(255);
  font = createFont("Courier", 20);
  textFont(font);
}

void draw() {
  background(0);
  nrKeys = 0;
  for (int i=0; i<downKeys.length; i++) {
    if (downKeys[i]) {
      nrKeys++;
      text((char)i, 10*nrKeys, height/2);
    }
  }
  text("Nr. of Keys: " + nrKeys, 20, 20);
}

void keyPressed() {
  if (key == CODED) {
    //print("Code: " + keyCode + ". ");
    if (keyCode<256) {
      downCodedKeys[keyCode] = true;
    }
  } else {
    //print("Key: " + (int)key + ". ");
    if (key<256) {
      downKeys[key] = true;
    }
  }
}

void keyReleased() {
  /*  if (key<256) {
   downKeys[key] = ;
   }*/
  if (key == CODED) {
    print("LiftCode: " + keyCode + ". ");
    if (keyCode<256) {
      downCodedKeys[keyCode] = false;
    }
  } else {
    print("LiftKey: " + (int)key + ". ");
    if (key<256) {
      downKeys[key] = false;
    }
  }
}
