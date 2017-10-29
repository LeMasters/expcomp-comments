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