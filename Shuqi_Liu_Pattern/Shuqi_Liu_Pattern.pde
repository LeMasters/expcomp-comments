//Shuqi Liu, Expressive Computation
//assisnment of pattern

// This is nice; your code is very sensible.
// Let's address the problem with beginShape, then.

// beginShape works in a couple of different
// contexts.  What happens in this code (as it is now)
// is that a shape gets drawn, but not directly on
// the screen.  It is drawn on a screen in memory,
// called a buffer.  When Processing sees endShape(),
// it closes up the shape, and then immediately 
// draws transfers that shape onto the screen as it exists now.

// When we use the myShape.beginShape syntax, we're creating
// a micro-buffer exclusively for this particular shape.
// It is like a piece of acetate, or tracing paper, or even
//  a stencil.  When we say myShape.endShape(CLOSE), the
// process finishes up, but nothing is transferred to the screen;
// instead, the shape now sits ready-to-use on a piece of 
// acetate.  So we need to follow that up later with
// shape(myShape, x, y);
// There's more to it, but that's a good start.
// I'll add that code in here and see if we can't get it to work.


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

  // awesome -- we've saved a blank canvas.
  // now let's go to a custom function
  // and draw the stencil...

  birdsAndBees();

  rowCount=6;
  colCount=6;
  frameRate(0.5); // this belongs in setup(), not draw()
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
 // translate(width/6, height/2);
  shape(flower, width/6, height/2);
  
  // the shape() function is basically like the
  // image() function.  One is vector, the other bitmap.
  
  //fail to add "flower." in front of beginShape and endShape

  //draw the bee
  /*
  int number=0;
  number++;
  fill(yellow);
  if (number<50) {
    float a= random(-300, 300);
    float b=random(-300, 300);
    ellipse(a, b, 10, 10);
  }
  */ 
  // Your bee, is not, how do I put this? Not good.
  // Your bee is not a good bee.  I will make a 
  // little bee for your flower, and you see
  // how you feel about it.
}

void birdsAndBees() {
  // let's make some flowers
  // important note:
  // shapes are a bit weird about how they
  // deal with fills, lines, strokeWeight
  // changes, etc.  If you want the flower
  // filled with pink, for example, you
  // have to be explicit about it and include
  // it immediately AFTER flower.beginShape().
  // If it comes before, it is, how does one say, no good.
  
  float k=0.9;

  // dot-syntax is so important here.
  // it makes it easier to strategically
  // allocate your efforts.
  
  flower.beginShape();
  flower.fill(pink);
  // i<3600 is obviously a little unusual --
  // will people understand that it is 360 x 10?
  // Maybe.  Maybe not.  Leave a note on code
  // like this (like this whole section) so that
  // no one is left in the dark.
  
  for (int i=0; i<3600; i++) {
    float polarI = radians(i);
    float r = cos(k*polarI)*250;
    float x =r*sin(polarI);
    float y =r*cos(polarI);
    flower.vertex(x, y);
  }
  flower.endShape();
}