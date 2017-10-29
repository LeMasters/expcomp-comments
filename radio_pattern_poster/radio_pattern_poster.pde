// There ought to be a name here,
// together with a brief word or two about
// what this code does.  Don't make it hard
// for people to read your code -- there's lots
// of other code to read, if yours is hard 
// they're likely to skip it entirely.

// Your code is a bit jumbled below -- maybe
// we'll take some time in class to look at
// how others organize it, though, because
// many of us have never looked at really complex
// multi-author code...  Anyway, at least
// consider using CMD-T, or CTRL-T, in order
// to have processing clean things up a bit.


// Design-wise, I'm hard-pressed to find anything
// to complain about:  This is really excellent.
// The typefaces at the bottom are pitch-perfect;
// your use of repetition is also dead-on (at least
// in terms of a 1980's aesthetic, which is when
// Radio Days probably was released).

// If you work as a designer (and if you don't, you
// should), then you want to think about how you
// can make use of this tool to meet needs.  For example,
// the mouseClick re-randomizes the colors (great!),
// but there should be another option (e.g., keyPress)
// that saves the image as it is -- so you can
// just keep randomizing until one works, and then
// save it, etc.

// Another thing (from a design perspective) that
// would be interesting:  Have Processing randomize
// everything:  the orientation of the radios,
// their size(s), the placement of the title, etc.
// 90% will be dreadful, but once in a while you
// can arrive at something that is worth keeping.

// Alternatively -- we're still in an era of monolithic
// reproduction:  Even the digital posters at bus stops
// in town are all the same across the whole city.
// More interesting would be to ensure that every
// stop had its own character, drawing cues and data
// from the environs immediately around it.
// Harsh sunlight?  Lots of buses?  Maybe the poster
// appears in B+W.  Near eldercare areas, or in the 
// middle of the day?  Bigger text, and fewer illustrations.
// Etc.  The point is for us to think about design as a
// possibility-space instead of design as an "Art".

int numCols=4; 
int numRows=4; 

int w=100;
int h=60;

int a=-40;
int b=-18;

int m=-38;
int n=-7;


 
int [] radioColor = new int [8];     
{
  
  radioColor[0]=color(246, 143, 57); 
  radioColor[1]=color(231,165,160); 
  radioColor[2]=color(242, 93, 95);
  radioColor[3]=color(129, 172, 188);
  radioColor[4]=color(236, 231, 216);
  radioColor[5]=color(177, 215, 129);
  radioColor[6]=color(250, 208, 47);
  radioColor[7]=color(146, 129, 159);
}
 
void setup () { 
  size(650, 700); 
} 
 
void draw () { 
  color babyblue = color(#B3DFD8);
  color red = color(#F25D5F);
  color white = color(#F2F2F2);
  color bluegreen = color(#548796);
  background(babyblue);
  
PFont myFont;
 myFont = createFont("Skia-Regular_Black", 48);
 textFont(myFont);
 fill(bluegreen);

 text("RADIO DAYS", 160, 620);

 PFont myFont2;
 myFont2 = createFont("Skia-Regular_Light-Condensed", 30);
 textFont(myFont2);
 fill(bluegreen);
 text("Woody Allen", 250, 660);

  
  
  
//multiple radio pattern
  for (float x=width/numCols; x<width-50; x+= ((width-50)/numCols)) { 
    for (float y=height/numCols; y<height-100; y+= ((height-100)/numCols)) {
     
      pushMatrix(); // position of melons
      translate(x, y);  //draw at x & y location 
      rectMode(CENTER);
      stroke(bluegreen);
//draw shadow 

      fill(bluegreen);
      rect(-2,2,w,h,5);
//draw radio box with random color    
      fill(radioColor[int(random(radioColor.length))]);
      rect(0,0,w,h,5); 
      
//draw the white rectangle on the radio box  
  fill(white);
  rect(0,-18,w-20,10,3);   
  
//draw antenna on the radio
//draw the longest line
  line(-40,-70,-40,-30);
//draw the rest of the antenna
  fill(white);
  rect(-40,-45,2,30);
//draw the tiny circle of the antenna
  fill(bluegreen);
  ellipse(-40,-70,2,2); 
  
//wave
  noFill();
  arc(-40, -70, 15, 15, HALF_PI+QUARTER_PI, PI+QUARTER_PI, OPEN);
  arc(-40, -70, 30, 30, HALF_PI+QUARTER_PI, PI+QUARTER_PI, OPEN);
  arc(-40, -70, 45, 45, HALF_PI+QUARTER_PI, PI+QUARTER_PI, OPEN);
  arc(-40, -70, 60, 60, HALF_PI+QUARTER_PI, PI+QUARTER_PI, OPEN);
  arc(-40, -70,15, 15, TWO_PI-QUARTER_PI, TWO_PI+QUARTER_PI, OPEN);
  arc(-40, -70, 30, 30, TWO_PI-QUARTER_PI, TWO_PI+QUARTER_PI, OPEN);
  arc(-40, -70, 45, 45, TWO_PI-QUARTER_PI, TWO_PI+QUARTER_PI, OPEN);
  arc(-40, -70, 60, 60, TWO_PI-QUARTER_PI, TWO_PI+QUARTER_PI, OPEN);
      
//draw two white circles on the radio box 
  fill(white);
  ellipse(30,-2,15,15);
  fill(white);
  ellipse(30,18,15,15); 
  
    
//draw multiple vertial lines on the top of the radio box 
  for (int a = -40; a < 40; a += 5) {
    line(a, b, a, b+5);
  }
  
 //draw multiple horizontal lines on the radio box
  for (int n = -7; n < 28; n += 7) {
    line(m, n, m+50, n);
  }
  
//draw red vertical line on the top of the radio box
  stroke(red);
  line(-22,-20,-22,-13);
  
  popMatrix();
            
      
    }
  }
//Loop = always drawing new colors/shapes
  noLoop();
}
 
void mousePressed () {
  //call loop once here to run through draw again and generate a new
  //random composition
  loop();
} 