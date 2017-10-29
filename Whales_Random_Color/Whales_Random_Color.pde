//Rebecca Tantillo
//Expressive Computation
//Whales + Waves

// Well done.  Your code is getting to be really
// sophisticated.  Some minor points:
// 1.  You randomize values as you are declaring
//     your globals at the top.  That works in
//     processing, but it won't work elsewhere.
//     It also spreads the assignment of value
//     out across even more of the code than
//     is already the case.  Consider
//     limiting assignment to within functions
//     proper.
// 2.  With all of your colors, consider creating
//     a seperate .pde file (colors.pde).  Create
//     a custom function (assignColors()) and
//     put all of those assignments in there.
//     Then call it from the setup().  It 
//     neatens things up nicely, plus it will
//     be easier to find your colors later.
// 3.  Same deal with drawing the whale -- put it
//     in a different file altogether so that
//     you can ignore the thousand "line()" statements,
//     etc.
// 
// 4.  One design suggestion:  The pattern of the whales
//     makes sense, but there ought to be some
//     tension or drama to make things more interesting.
//     (Whales are both (1) mammals and (2) drama
//     queens.  Not many people know that.)
//     For example, I "submerged" the whales that
//     were already there and then colored one
//     of the whales white.  Not perfect, but I think
//     that sort of thing helps dramatize your
//     pattern more effectively.
//
// 5.  Finally:  In trying to change some of the
//     fills and strokes, I feel like I found
//     lots of colors changing as a consequence.
//     Is that just me, or is there a more
//     complicated thing (e.g., layers) going on
//     here that I just haven't seen?



//global variables

// array randomizer for ocean colors
color[] ocean = new color[3]; // use to randomize color of background aka the ocean
int oceanCount = int(random(3)); 

// array randomizer for wave colors
color[] waves = new color[2]; 
int wavesCount = int(random(2)); 

// array randomizer for whale colors
color[] whales = new color[2]; 
int whalesCount = int(random(2));

// grid variables
int whaleRow, whaleCol, waveRow, waveCol;

void setup() {
  size(600, 600);
  smooth(8);

  // sets up grids x object
  whaleRow = 7;
  whaleCol = 4;
  waveRow = 6;
  waveCol = 3;

  // ocean colors
  ocean[0] = color(#cceae0); // lightblue 
  ocean[1] = color(#54a8a8); // turquoise
  ocean[2] = color(#86bbc2); // medblue

  // alt wave colors
  waves[0] = color(#9a604b); //burnt red
  waves[1] = color(#1f4a6e); //dark blue

  // whale colors
  whales[0] = color(#ffffff); // white
  whales[1] = color(#C8C8C8); // darkgrey
}


void draw() {

  //palatte
  color black =color(#211f22); 
  color grey =color(#dcdfd5); 
  color offwhite =color(#daddd2);
  color rose = color(#d7b58d);
  color beige = color(#ede2b2);
  color burntred = color(#9a604b);
  color lightblue = color(#cceae0);
  color medblue = color(#86bbc2);
  color turquoise = color(#54a8a8);
  color darkblue = color(#1f4a6e); 

  background(ocean[oceanCount]);

  
  // repeat wave
  for (int row = 0; row < waveRow; row++) {
    for (int col = 0; col < waveCol; col++) {
      float x = col*(width/waveCol);
      float y = row*(height/waveRow);
      pushMatrix();
      translate(x, y); // go to the top of a square
      // see below for note on combination.
      // also:  This is one place where a note
      // would be super helpful -- why do you
      // subtract 200 from the x?  etc.
      translate(-200, 0); 
      waveDraw();
      popMatrix();
    }
  }

  // repeat whale
  for (int row = 0; row < whaleRow; row++) {
    for (int col = 0; col < whaleCol; col++) {
      float x = col*(width/whaleCol);
      float y = row*(height/whaleRow);
      pushMatrix();
      translate(x, y); // go to the top of a square
      // you don't have to combine these,
      // but of course you could:
      translate(-185, -175); 
      // is really just one statement:
      // translate(x-185,y-175);
      
      
      if(row==5 && col == 2) {
        mobyDick();
      } else {
        whaleDraw();
      }
      popMatrix();
    }
  }
}

void waveDraw() {
  //waves
  noFill();
  stroke(waves[wavesCount]);
  strokeWeight(2);
  beginShape();
  curveVertex(0, 5); 
  curveVertex(0, 5); 
  curveVertex(50, 20);
  curveVertex(100, 20);
  curveVertex(175, -15);
  curveVertex(250, -15);
  curveVertex(325, 30); 
  curveVertex(375, 30); 
  curveVertex(450, -5); 
  curveVertex(500, -5); 
  curveVertex(575, 25); 
  curveVertex(600, 25); 
  curveVertex(600, 25);
  endShape();

  noFill();
  stroke(255);
  beginShape();
  curveVertex(0, 85); 
  curveVertex(0, 85); 
  curveVertex(50, 100);
  curveVertex(100, 100);
  curveVertex(175, 60);
  curveVertex(250, 60);
  curveVertex(325, 105); 
  curveVertex(375, 105); 
  curveVertex(450, 75); 
  curveVertex(500, 75); 
  curveVertex(575, 105); 
  curveVertex(600, 105); // the last point of curve
  curveVertex(600, 105); // the last point of curve
  endShape();
}
void mobyDick() {

  //whale
  stroke(50,100,200);
  fill(230);
  
//  fill(whales[whalesCount],41);
  beginShape();
  vertex(200, 250); 
  bezierVertex(200, 225, 325, 150, 320, 250); 
  vertex(200, 250); 
  bezierVertex(200, 170, 220, 220, 220, 225); 
  endShape();

  //stripes
  stroke(50,50,220);
  strokeWeight(1);
  line(276, 200, 276, 240); 
  line(278, 200, 278, 240); 
  line(280, 200, 280, 240); 
  line(282, 200, 282, 240); 
  line(284, 200, 284, 240); 
  line(286, 200, 286, 240);
  line(288, 200, 288, 240);
  line(290, 200, 290, 240); 
  line(292, 200, 292, 240); 
  line(294, 201, 294, 240); 
  line(296, 201, 296, 240); 

   // mouth
  stroke(100,100,200);
   line(300,240,320,240);
   
   //eye
   //fill(255);
   //ellipse(305,225,5,5);

  /*
 // spout
   noStroke();
   fill(0);
   beginShape();
   //vertex(200, 250); 
   //bezierVertex(200, 225, 325, 150, 320, 250); 
   vertex(200, 250); 
   bezierVertex(200, 170, 220, 220, 220, 250); 
   endShape();
   */
}

void whaleDraw() {

  //whale
  stroke(225,128);
  fill(110,150);
  
//  fill(whales[whalesCount],41);
  beginShape();
  vertex(200, 250); 
  bezierVertex(200, 225, 325, 150, 320, 250); 
  vertex(200, 250); 
  bezierVertex(200, 170, 220, 220, 220, 225); 
  endShape();

  //stripes
  stroke(225);
  strokeWeight(1);
  line(276, 200, 276, 240); 
  line(278, 200, 278, 240); 
  line(280, 200, 280, 240); 
  line(282, 200, 282, 240); 
  line(284, 200, 284, 240); 
  line(286, 200, 286, 240);
  line(288, 200, 288, 240);
  line(290, 200, 290, 240); 
  line(292, 200, 292, 240); 
  line(294, 201, 294, 240); 
  line(296, 201, 296, 240); 

   // mouth
   stroke(225);
   line(300,240,320,240);
   
   //eye
   //fill(255);
   //ellipse(305,225,5,5);

  /*
 // spout
   noStroke();
   fill(0);
   beginShape();
   //vertex(200, 250); 
   //bezierVertex(200, 225, 325, 150, 320, 250); 
   vertex(200, 250); 
   bezierVertex(200, 170, 220, 220, 220, 250); 
   endShape();
   */
}