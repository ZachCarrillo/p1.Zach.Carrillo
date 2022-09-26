int[] circleX = {180, 180, 180, 180, 180, 100, 260};
int[] circleY = {380, 320, 260, 200, 440, 440, 440};
int circleD = 50;
boolean rectOver = false;
boolean[] circleOver = {false, false, false, false, false, false, false};
boolean[] circleClicked = {false, false, false, false, false, false, false};
color strokeColor = color(192,192,192);
color newColor = color(239,192,112);

void setup() {
 size(360, 700); 
 textFont(createFont("us-elevator-led.ttf",64));
}

void draw() {
 update(mouseX, mouseY);
 background(102);
 strokeWeight(4);
 fill(255,255,255);
 stroke(strokeColor);
 rect(10,10,340,100);
 strokeWeight(6);
 
 
 if (circleOver[3]) {
    fill(255,0,0);
  } else {
    fill(255,255,255);
     stroke(strokeColor);
  }
  if(circleClicked[3]) {
      stroke(newColor);
      ellipse(180, 200, 50, 50);
    }
 ellipse(180, 200, 50, 50);
 
 
 if (circleOver[2]) {
    fill(255,0,0);
  } else {
    fill(255,255,255);
     stroke(strokeColor);
  }
    if(circleClicked[2]) {
      stroke(newColor);
      ellipse(180, 260, 50, 50);
    }
 ellipse(180, 260, 50, 50);
 
 
 if (circleOver[1]) {
    fill(255,0,0);
  } else {
    fill(255,255,255);
     stroke(strokeColor);
  }
   if(circleClicked[1]) {
   stroke(newColor);
   ellipse(180, 320, 50, 50);
    }
 ellipse(180, 320, 50, 50);
 
 
 if (circleOver[0]) {
    fill(255,0,0);
  } else {
    fill(255,255,255);
     stroke(strokeColor);
  }   
  if(circleClicked[0]) {
   stroke(newColor);
   ellipse(180, 380, 50, 50);
    }
 ellipse(180, 380, 50, 50);
 
 
 if (circleOver[4]) {
    fill(255,0,0);
  } else {
    fill(255,255,255);
     stroke(strokeColor);
  }
  if(circleClicked[4]) {
   stroke(newColor);
   ellipse(180, 440, 50, 50);
    }
 ellipse(180, 440, 50, 50);
 
 
 if (circleOver[5]) {
    fill(255,0,0);
  } else {
    fill(255,255,255);
    stroke(strokeColor);
  }
  if(circleClicked[5]) {
   stroke(newColor);
   ellipse(100, 440, 50, 50);
    }
 ellipse(100, 440, 50, 50);
 
 
 if (circleOver[6]) {
    fill(255,0,0);
  } else {
    fill(0,0,0);
    stroke(strokeColor);
  }  
  if(circleClicked[6]) {
   stroke(newColor);
   ellipse(260, 440, 50, 50);
    }
 ellipse(260, 440, 50, 50); 
 
 
 //adding text
 fill(0,0,0);
 setText();
 textSize(14);
 text("OPEN", 80, 490);
 text("CLOSE", 157, 490);
 text("HELP", 240, 490);
 textSize(22);
 text("1", 173, 390);
 text("2", 173, 330);
 text("3", 173, 270);
 text("4", 173, 210);
}

void setText() {
  String text = "Going to floor ";
  boolean isClicked = false;
  for(int i = 0; i < circleClicked.length - 3; i++) {
    if(circleClicked[i]) {
      isClicked = true;
      if(text.length() > 15) {
        text += ", ";
      }
      text += i+1;
    }
  }
  if(!isClicked) {
    textSize(14);
    text("Press a button to go to a floor.", 25, 60);
  }
  else {
    textSize(14);
    text(text, 25, 60);
  }
  
}

void update(int x, int y) {
  for(int i = 0; i < circleX.length; i++) {
    if(overCircle(circleX[i], circleY[i], circleD)) {
      circleOver[i] = true;
    }
    else {
      circleOver[i] = false; 
    }
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}


void mouseClicked() {
  for(int i = 0 ; i < circleOver.length; i++) {
    if(circleOver[i]) {
      circleClicked[i] = !circleClicked[i];
    }
  }
}
