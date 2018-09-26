// Rupert Russell
// 26 September 2018
// Subgrid 110

int squareSideLength = 100;
float yOffset = 2.733;



float yOffset2 = 1.367; // 1.36 This one


float xOffset = 2.367;  //  2.355

void setup() {
  size(8800, 8800);
  fill(#384366);
  background(#d85a0f);
  stroke(2);
  noLoop();
}

void draw() {
  translate(squareSideLength*yOffset, squareSideLength*yOffset* 1.5);
  pushMatrix();

 for (int i = 0; i < 17; i ++) {
  // move down and draw another

  subgrid();
  translate(squareSideLength*xOffset, squareSideLength*yOffset2);
  
  subgrid2();
  translate(squareSideLength*xOffset, squareSideLength*-yOffset2);
  

 }

  save("9d.png");
  exit();
}

void subgrid() {
  pushMatrix();

  for (int i = 0; i < 30; i ++) {
    for (int j = 0; j < 6; j ++) {
      fill(#384366);
      //  noFill();
      rotate(radians(360/6));
      translate(-squareSideLength, 0);
      rect(0, 0, squareSideLength, squareSideLength);
      fill(255);
      triangle(0, 0, squareSideLength, squareSideLength, 0, squareSideLength);
    }
    translate(0, squareSideLength*yOffset);
  }
  popMatrix();
}


void subgrid2() {
  pushMatrix();

  for (int i = 0; i < 30; i ++) {
    for (int j = 0; j < 6; j ++) {
      fill(255);
      //  noFill();
      rotate(radians(360/6));
      translate(-squareSideLength, 0);
      rect(0, 0, squareSideLength, squareSideLength);
      fill(#384366);
      triangle(0, 0, squareSideLength, squareSideLength, 0, squareSideLength);
    }
    translate(0, squareSideLength*yOffset);
  }
  popMatrix();
}
