//Shuqi Liu, Expressive Computation
//assisnment of pattern

PShape flower;
color yellow = color(255, 171, 36);
color pink= color(255, 200, 184);
color green=color(207, 255, 196);
float rowCount, colCount;


void setup() {
  size(600, 600);
  stroke(255);
  strokeWeight(3);
  flower=createShape();
  rowCount=6;
  colCount=6;
}

void draw() {

  fill(green);
  for (int row=0; row<rowCount; row++) {
    for (int col=0; col<colCount; col++) {
      float x =col*(width/colCount);
      float y =row*(height/rowCount);
      rect(x, y, 100, 100);
    }
  }
  //draw the flower
  translate(width/6, height/2);
  float k=0.9;
  fill(pink);
  beginShape();
  for (int i=0; i<3600; i++) {
    float polarI = radians(i);
    float r = cos(k*polarI)*250;
    float x =r*sin(polarI);
    float y =r*cos(polarI);
    vertex(x, y);
  }
  endShape();
  //fail to add "flower." in front of beginShape and endShape

  //draw the bee
  int number=0;
  number++;
  frameRate(0.5);
  fill(yellow);
  if (number<50) {
    float a= random(-300, 300);
    float b=random(-300, 300);
    ellipse(a, b, 10, 10);
  }
}