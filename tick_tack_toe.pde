PImage circle, cross;
PImage replay;

int sw;

boolean first1, first2, first3, second1, second2, second3, third1, third2, third3;
int state1, state2, state3, state4, state5, state6, state7, state8, state9;

boolean circleWin, crossWin;

boolean touchAble;

float squareWidth, squareHeight;

int replaySection;

int randomSelector = int(random(1, 9));

void setup() {
  size(400, 400);
  
  sw = 1;
  
  circle = loadImage("circle.png");
  cross = loadImage("cross.png");
  
  replay = loadImage("replayIcon.png");
  
  first1 = first2 = first3 = second1 = second2 = second3 = third1 = third2 = third3 = false;
  
  circleWin = crossWin = false;
  
  touchAble = true;
  
  squareWidth = width/3 -5;
  squareHeight = height/3 -10;
  
  replaySection = 6;
}

void draw() {
  background(255);
  
  strokeWeight(3);
  line(width/3, 0, width/3, height);
  line(width/3 * 2, 0, width/3 * 2, height);
  line(0, height/3, width, height/3);
  line(0, height/3 * 2, width, height/3 * 2);
  
  if (mousePressed) {
    if (touchAble == true) {
        //first-column click
      if (mouseX <= width/3) {
        if (mouseY <= height/3) {
          if (first1 != true) {
            first1 = true;
            state1 = sw;
            sw = -sw;
          }
          print("1-1 block \n");
        }
        else if (mouseY <= height/3 * 2) {
          if (first2 != true) {
            first2 = true;
            state2 = sw;
            sw = -sw;
          }
          print("1-2 block \n");
        }
        else {
          if (first3 != true) {
            first3 = true;
            state3 = sw;
            sw = -sw;
          }
          print("1-3 block \n");
        }
      }
      //second-column click
      if (width/3 < mouseX && mouseX <= width/3 * 2) {
        if (mouseY <= height/3) {
          if (second1 != true) {
            second1 = true;
            state4 = sw;
            sw = -sw;
          }
          print("2-1 block \n");
        }
        else if (mouseY <= height/3 * 2) {
          if (second2 != true) {
            second2 = true;
            state5 = sw;
            sw = -sw;
          }
          print("2-2 block \n");
        }
        else {
          if (second3 != true) {
            second3 = true;
            state6 = sw;
            sw = -sw;
          }
          print("2-3 block \n");
        }
      }
      //third-column click
      else if (width/3 * 2 < mouseX){
        if (mouseY <= height/3) {
          if (third1 != true) {
            third1 = true;
            state7 = sw;
            sw = -sw;
          }
          print("3-1 block \n");
        }
        else if (mouseY <= height/3 * 2) {
          if (third2 != true) {
            third2 = true;
            state8 = sw;
            sw = -sw;
          }
          print("3-2 block \n");
        }
        else {
          if (third3 != true) {
            third3 = true;
            state9 = sw;
            sw = -sw;
          }
          print("3-3 block \n");
        }
      }
    }
  }
  
  //first-column mark
  if (first1 == true) {
    if (state1 > 0) {
      image(circle, 0, 0, squareWidth, squareHeight);
    }
    else {
      image(cross, 0, 0, squareWidth, squareHeight);
    }
  }
  if (first2 == true) {
    if (state2 > 0) {
      image(circle, 0, height/3, squareWidth, squareHeight);
    }
    else {
      image(cross, 0, height/3, squareWidth, squareHeight);
    }
  }
  if (first3 == true) {
    if (state3 > 0) {
      image(circle, 0, height/3 * 2, squareWidth, squareHeight);
    }
    else {
      image(cross, 0, height/3 * 2, squareWidth, squareHeight);
    }
  }
  //second-column mark
  if (second1 == true) {
    if (state4 > 0) {
      image(circle, width/3, 0, squareWidth, squareHeight);
    }
    else {
      image(cross, width/3, 0, squareWidth, squareHeight);
    }
  }
  if (second2 == true) {
    if (state5 > 0) {
      image(circle, width/3, height/3, squareWidth, squareHeight);
    }
    else {
      image(cross, width/3, height/3, squareWidth, squareHeight);
    }
  }
  if (second3 == true) {
    if (state6 > 0) {
      image(circle, width/3, height/3 * 2, squareWidth, squareHeight);
    }
    else {
      image(cross, width/3, height/3 * 2, squareWidth, squareHeight);
    }
  }
  //third-column mark
  if (third1 == true) {
    if (state7 > 0) {
      image(circle, width/3 * 2, 0, squareWidth, squareHeight);
    }
    else {
      image(cross, width/3 * 2, 0, squareWidth, squareHeight);
    }
  }
  if (third2 == true) {
    if (state8 > 0) {
      image(circle, width/3 * 2, height/3, squareWidth, squareHeight);
    }
    else {
      image(cross, width/3 * 2, height/3, squareWidth, squareHeight);
    }
  }
  if (third3 == true) {
    if (state9 > 0) {
      image(circle, width/3 * 2, height/3 * 2, squareWidth, squareHeight);
    }
    else {
      image(cross, width/3 * 2, height/3 * 2, squareWidth, squareHeight);
    }
  }
  
  //detect circle line
  if (state1 > 0 && state4 > 0 && state7 > 0) {
    circleWin = true;
    println("Circle Win");
  }
  else if (state2 > 0 && state5 > 0 && state8 > 0) {
    circleWin = true;
    println("Circle Win");
  }
  else if (state3 > 0 && state6 > 0 && state9 > 0) {
    circleWin = true;
    println("Circle Win");
  }
  else if (state1 > 0 && state2 > 0 && state3 > 0) {
    circleWin = true;
    println("Circle Win");
  }
  else if (state4 > 0 && state5 > 0 && state6 > 0) {
    circleWin = true;
    println("Circle Win");
  }
  else if (state7 > 0 && state8 > 0 && state9 > 0) {
    circleWin = true;
    println("Circle Win");
  }
  else if (state1 > 0 && state5 > 0 && state9 > 0) {
    circleWin = true;
    println("Circle Win");
  }
  else if (state7 > 0 && state5 > 0 && state3 > 0) {
    circleWin = true;
    println("Circle Win");
  }
  
  //detect cross line
  if (state1 < 0 && state4 < 0 && state7 < 0) {
    crossWin = true;
    println("Cross Win");
  }
  else if (state2 < 0 && state5 < 0 && state8 < 0) {
    crossWin = true;
    println("Cross Win");
  }
  else if (state3 < 0 && state6 < 0 && state9 < 0) {
    crossWin = true;
    println("Cross Win");
  }
  else if (state1 < 0 && state2 < 0 && state3 < 0) {
    crossWin = true;
    println("Cross Win");
  }
  else if (state4 < 0 && state5 < 0 && state6 < 0) {
    crossWin = true;
    println("Cross Win");
  }
  else if (state7 < 0 && state8 < 0 && state9 < 0) {
    crossWin = true;
    println("Cross Win");
  }
  else if (state1 < 0 && state5 < 0 && state9 < 0) {
    crossWin = true;
    println("Cross Win");
  }
  else if (state7 < 0 && state5 < 0 && state3 < 0) {
    crossWin = true;
    println("Cross Win");
  }
  
  //result
  if (circleWin == true) {
    touchAble = false;
  }
  else if (crossWin == true) {
    touchAble = false;
  }
  else if (first1 == true && first2 == true && first3 == true) {
    if (second1 == true && second2 == true && second3 == true) {
      if (third1 == true && third2 == true && third3 == true) {
        if (crossWin == false && circleWin == false) {
          println("Draw");
          touchAble = false;
        }
      }
    }
  }
  
  if (touchAble == false) {
    //second raw empty detect
    if (second2 == false) {
      image(replay, width/3, height/3, squareWidth, squareHeight);
    }
    else if (first2 == false) {
      image(replay, 0, height/3, squareWidth, squareHeight);
    }
    else if (third2 == false) {
      image(replay, width/3 * 2, height/3, squareWidth, squareHeight);
    }
    
    //third raw empty detect
    else if (second3 == false) {
      image(replay, width/3, height/3 * 2, squareWidth, squareHeight);
    }
    else if (first3 == false) {
      image(replay, 0, height/3 * 2, squareWidth, squareHeight);
    }
    else if (third3 == false) {
      image(replay, width/3 * 2, height/3 * 2, squareWidth, squareHeight);
    }
    
    //first raw empty detect
    else if (second1 == false) {
      image(replay, width/3, 0, squareWidth, squareHeight);
    }
    else if (first1 == false) {
      image(replay, 0, 0, squareWidth, squareHeight);
    }
    else if (third1 == false) {
      image(replay, width/3 * 2, 0, squareWidth, squareHeight);
    }
    
    //if nothing empty
    else {
      switch (randomSelector) {
        case 1:
          image(replay, 0, 0, squareWidth, squareHeight);
          break;
        case 2:
          image(replay, width/3, 0, squareWidth, squareHeight);
          break;
        case 3:
          image(replay, width/3 * 2, 0, squareWidth, squareHeight);
          break;
        case 4:
          image(replay, 0, height/3, squareWidth, squareHeight);
          break;
        case 5:
          image(replay, width/3, height/3, squareWidth, squareHeight);
          break;
        case 6:
          image(replay, width/3 * 2, height/3, squareWidth, squareHeight);
          break;
        case 7:
          image(replay, 0, height/3 * 2, squareWidth, squareHeight);
          break;
        case 8:
          image(replay, width/3, height/3 * 2, squareWidth, squareHeight);
          break;
        case 9:
          image(replay, width/3 * 2, height/3 * 2, squareWidth, squareHeight);
          break;
      }
    }
    
    if (circleWin == true) {
      textSize(50);
      fill(#5358DE);
      text("Circle Win", mouseX, mouseY);
    }
    else if (crossWin == true) {
      textSize(50);
      fill(#DE5353);
      text("Cross Win", mouseX, mouseY);
    }
    else {
      textSize(50);
      fill(#AF53DE);
      text("Draw", mouseX, mouseY);
    }
  }
}
